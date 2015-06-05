class Event < ActiveRecord::Base
  belongs_to :project
  has_many :events_users
  has_many :users, through: :events_users

  has_many :events_skills
  has_many :skills, through: :events_skills


  def formatted_start
    start_date.strftime('%b %e, %l:%M %P')
  end

  def formatted_end
    end_date.strftime('%l:%M %P')
  end

  def calculate_hours
    events_hours = (end_date - start_date)/3600
  end


end
#2015-06-03 12:00:00 UTC -- 2015-06-03 17:00:00 UTC
#June 03, 2015 09:00
