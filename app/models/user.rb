class User < ActiveRecord::Base

  TEMP_EMAIL_PREFIX = 'change@me'
  TEMP_EMAIL_REGEX = /\Achange@me/

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  before_create :assign_token
  has_many :referrers, class_name: "User", foreign_key: :referred_by_id


  def self.find_for_oauth(auth, signed_in_resource = nil)

    identity = Identity.find_for_oauth(auth)
    user = signed_in_resource ? signed_in_resource : identity.user

    if user.nil?

      email_is_verified = auth.info.email && (auth.info.verified || auth.info.verified_email)
      email = auth.info.email if email_is_verified
      user = User.where(:email => email).first if email

      if user.nil?
        user = User.new(
          first_name: auth.extra.raw_info.name.split(" ").first,
          last_name: auth.extra.raw_info.name.split(" ").last,
          email: email ? email : "#{TEMP_EMAIL_PREFIX}-#{auth.uid}-#{auth.provider}.com",
          password: Devise.friendly_token.first(8)
        )
        user.save!
      end
    end

    if identity.user != user
      identity.user = user
      identity.save!
    end
    user
  end

  def full_name
    [first_name, last_name].compact.join(" ")
  end

  private

  def assign_token
  	random_code = self.first_name.try(:downcase) || self.email.try(:split, "@").try(:first)
    i = 1
  	while(!User.where(tracking_code: random_code).blank?)
      if(i > 1)
        random_code = random_code[0...(random_code.length - 1)] + i.to_s
      else
        random_code = random_code + i.to_s
      end
      i = i + 1
  	end
    self.tracking_code = random_code
  end

end
