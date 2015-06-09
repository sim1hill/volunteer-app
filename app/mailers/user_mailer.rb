class UserMailer < ApplicationMailer

  def contact_volunteer(user,project,event)
    # binding.pry
    @user = user
    @project = project
    @project_coordinator = User.find(@project.user_id)
    @event = event
    mail(to: 'volunteerly.flatiron@gmail.com', subject: "Would You Like to Volunteer for #{@event.name}?")
  end
end
