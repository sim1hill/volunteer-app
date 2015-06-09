class Event < ActiveRecord::Base
  belongs_to :project
  has_many :events_users
  has_many :users, through: :events_users

  has_many :events_skills
  has_many :skills, through: :events_skills

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


end
#2015-06-03 12:00:00 UTC -- 2015-06-03 17:00:00 UTC
#June 03, 2015 09:00
