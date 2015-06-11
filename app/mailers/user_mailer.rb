class UserMailer < ApplicationMailer

  def contact_volunteer(user,project,event)
    # binding.pry
    @user = user
    @project = project
    @project_coordinator = User.find(@project.user_id)
    @event = event
    mail(to: 'volunteerly.flatiron@gmail.com', subject: "Would You Like to Volunteer for #{@event.name}?")
  end

  def contact_for_skills(user,sender_id)
    @user = user
    @sender = User.find(sender_id)
    mail(to: 'volunteerly.flatiron@gmail.com', subject: "Will You Share Your Skills With Me?")
  end

  def contact_coordinator(coordinator, sender)
    @coordinator = coordinator
    @sender = sender
    mail(to: 'volunteerly.flatiron@gmail.com', subject: "Request For Info For a Project")
  end


end
