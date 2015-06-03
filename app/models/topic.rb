class Topic < ActiveRecord::Base
  has_many :topic_users
  has_many :users, through: :topic_users
end
