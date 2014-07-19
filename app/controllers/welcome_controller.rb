class WelcomeController < ApplicationController

  def index
  	@user = User.new
  end

  def refer
  	cookies[:referrer_info] = {
		  value: { sign_up_source: request.referrer, referred_by_id: User.where(tracking_code: params[:code]).first.try(:id) }, 
		  expires: 1.year.from_now
  	}
  	redirect_to :root
  end

  def invite
    params[:emails].split(",").each do |email|
      email.strip!
      if email =~ /^([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})$/i
        InviteMailer.invite(email, current_user).deliver!
      end
    end
    redirect_to :back, flash: {success: "Successfully invited users"}
  end

end
