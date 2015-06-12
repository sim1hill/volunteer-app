class Event < ActiveRecord::Base
  validates :address, presence: true

  belongs_to :project
  has_many :events_users
  has_many :users, through: :events_users

  has_many :events_skills
  has_many :skills, through: :events_skills

  geocoded_by :address
  after_validation :geocode  

  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode

  def suggested_users
    User.joins(:skills).where({skills: {id: self.skills}}).distinct.limit(5)
  end

   def matching_skills(user)
    matches = []
      user.skills.each do |skill|
        if self.skills.include?(skill)
          matches << skill.name
        end
      end
    matches
  end

  def formatted_start
    start_date.strftime('%b %e, %l:%M %P')
  end

  def formatted_end
    end_date.strftime('%l:%M %P')
  end

  def calculate_hours
    events_hours = (end_date - start_date)/3600
  end

  def truncated_name
    name.truncate(25)
  end


end
