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

end
