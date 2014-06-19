class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  before_create :assign_token

  def full_name
    [first_name, last_name].compact.join(" ")
  end

  private

  def assign_token
  	random_code = SecureRandom.hex.upcase[0..5]
  	while(!User.where(tracking_code: random_code).blank?)
  		random_code = SecureRandom.hex.upcase[0..5]
  	end
    self.tracking_code = random_code
  end

end
