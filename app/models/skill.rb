class Skill < ActiveRecord::Base
  has_many :events_skills
  has_many :events, through: :events_skills

  has_many :skills_users
  has_many :users, through: :skills_users
end
