class TopicsUser < ActiveRecord::Base
  belongs_to :topic
  belongs_to :user
  validates_uniqueness_of :user_id, :scope => :topic_id


end