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
  
end
