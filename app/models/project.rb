class Project < ActiveRecord::Base
  has_many :events
  belongs_to :topic
  belongs_to :user
  mount_uploader :photo, PhotoUploader

  def total_hours
    hours = 0
    events.where('end_date <= ?', Time.now).each do |event|
      hours += (event.calculate_hours * event.users.count)
    end
    hours
  end 

  def total_users
    users = 0
    events.each do |event|
      users += event.users.count
    end
    users
  end

  def truncated_name
    name.truncate(25)
  end

  def truncated_description
    description.truncate(90) 
  end

  def future_events
    events.where('start_date >= ?', Time.now).order(:start_date)
  end

  def past_events
    events.where('start_date <= ?', Time.now).order(:start_date)
  end

  
  
end
