class Event < ActiveRecord::Base
  belongs_to :project
  has_many :events_users
  has_many :users, through: :events_users

  has_many :events_skills
  has_many :skills, through: :events_skills
end
