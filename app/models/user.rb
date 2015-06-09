class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  # Loads photos through CarrierWave
  mount_uploader :photo, PhotoUploader

  has_many :projects
  has_many :events_users
  has_many :events, through: :events_users

  has_many :skills_users
  has_many :skills, through: :skills_users

  has_many :topics_users
  has_many :topics, through: :topics_users

  def self.total_volunteer_hours
    total_hours = 0
    all.each do |user|
      total_hours += user.users_hours
    end
    total_hours
  end

  def self.sort_by_hours
    all.sort_by {|user| user.users_hours }.reverse
  end

  def suggested_events
    #Event.joins(:skills).where({skills: {id: self.skills}}).distinct.limit(5)
    Event.joins(:skills).where('end_date >= ?', Time.now).where({skills: {id: self.skills}}).distinct.limit(5)
  end

  def suggested_projects
    Project.where(topic_id:self.topics).distinct.limit(5)
  end

  def total_past_events
    self.events.where('end_date <= ?', Time.now)
  end

  def past_month_events
    total_past_events.where('end_date >= ?', Time.now.months_ago(2))
  end


  def matching_skills(event)
    matches = []
      event.skills.each do |skill|
        if self.skills.include?(skill)
          matches << skill.name
        end
      end
    matches
  end

  def users_hours
    sum = 0
    events.where('end_date <= ?', Time.now).each do |event|
     sum += event.calculate_hours
    end
    sum
  end

  def hours_received
    total_hours_received = 0
    projects.each do |project|
      total_hours_received += project.total_hours
    end
    total_hours_received
  end  

end
