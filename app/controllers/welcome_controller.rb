class WelcomeController < ApplicationController

  def index
  end

  def refer
  	cookies[:referrer_info] = {
		  value: { url: request.referrer, referrer_id: params[:code] }, 
		  expires: 1.year.from_now
  	}
  	redirect_to :new_user_registration
  end

end
