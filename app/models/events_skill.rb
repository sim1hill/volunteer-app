class EventsSkill < ActiveRecord::Base
  belongs_to :event
  belongs_to :skill
  validates_uniqueness_of :skill_id, :scope => :event_id
end