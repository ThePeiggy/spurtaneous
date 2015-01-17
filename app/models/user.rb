class User < ActiveRecord::Base
  has_many :causes, dependent: :destroy
  before_save { self.email = email.downcase }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password


  def hit(cause_id)
  	cause = Cause.find(cause_id)
  	cause.add_hit
  	#take money out
  end
end
