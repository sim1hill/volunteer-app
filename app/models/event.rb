class Event < ActiveRecord::Base
  belongs_to :project
  has_many :events_users
  has_many :users, through: :events_users
end
