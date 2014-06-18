class WelcomeController < ApplicationController

  def index
  	@user = User.new
  end

  def refer
  	cookies[:referrer_info] = {
		  value: { url: request.referrer, referrer_id: params[:code] }, 
		  expires: 1.year.from_now
  	}
  	redirect_to :root_path
  end

end
