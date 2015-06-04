class Project < ActiveRecord::Base
  has_many :events
  belongs_to :topic
  belongs_to :user
end
