class Topic < ActiveRecord::Base
  has_many :topics_users
  has_many :users, through: :topics_users
  has_many :projects
end
