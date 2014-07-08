class Registration < ActionMailer::Base

  default from: "support@zasny.com"

  def welcome(user, password)
    @user = user
    @password = password
  end

end
