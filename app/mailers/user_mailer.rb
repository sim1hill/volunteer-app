class UserMailer < ApplicationMailer

  def welcome_email(user)
    # binding.pry
    @user = user
    mail(to: 'joshua.baker@flatironschool.com', subject: "Welcome!")
  end
end
