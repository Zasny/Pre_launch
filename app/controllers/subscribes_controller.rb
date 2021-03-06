class SubscribesController < ApplicationController

	def create
		generated_password = Devise.friendly_token.first(8)
		@user = User.new(user_params.merge({password: generated_password, sign_up_ip: request.ip}).merge(eval(cookies[:referrer_info] || "{}")))
		if(@user.save)
			RegistrationMailer.welcome(@user, generated_password).deliver
			sign_in(:user, @user)
			redirect_to :root, notice: "Thanks for your subscription"
		else
			redirect_to :root, notice: @user.errors.full_messages.join(", ")
		end
	end

	private

	def user_params
    params.require(:post).permit(:email, :first_name, :last_name)
  end

end