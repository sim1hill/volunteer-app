class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :events_users
  has_many :events, through: :events_users

  has_many :skills_users
  has_many :skills, through: :skills_users

  has_many :topics_users
  has_many :topics, through: :topics_users


  def suggested_events
    Event.joins(:skills).where({skills: {id: self.skills}}).distinct
  end

  def matching_skills(event)
    matches = []
      event.skills.each do |skill|
        if self.skills.include?(skill)
          matches << skill.name
        end
      end
    matches
  end

end
