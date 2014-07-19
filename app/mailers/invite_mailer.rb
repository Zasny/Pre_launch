class InviteMailer < ActionMailer::Base

  default from: "support@zasny.com"

  def invite(email, from_user)
  	@user = from_user
    mail(:to => email, :subject => "#{from_user.full_name} have invite you to join Zasny")
  end

end
