class UsersController < ApplicationController

	def create
		generated_password = Devise.friendly_token.first(8)
		user = User.create!(user_params.merge({password: generated_password, sign_up_ip: request.ip}).merge(eval(cookies[:referrer_info])))

		Registration.welcome(user, generated_password).deliver
		sign_in(:user, user)

		redirect_to :root, notice: "Thanks for your subscription"
	end

	private

	def user_params
    params.require(:user).permit(:email, :first_name, :last_name)
  end

end