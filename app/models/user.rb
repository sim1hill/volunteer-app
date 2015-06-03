class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :events_users
  has_many :events, through: :events_users

  has_many :skills_users
  has_many :skills, through: :skills_users

  has_many :topic_users
  has_many :topics, through: :topic_users
end
