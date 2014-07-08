class RegistrationMailer < ActionMailer::Base

  default from: "support@zasny.com"

  def welcome(user, password)
    @user = user
    @password = password
    mail(:to => user.email, :subject => "Welcome to Zasny!")
  end

end
