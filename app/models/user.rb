class User < ActiveRecord::Base
  has_many :causes, dependent: :destroy
  validates :email, presence: true


  def hit(cause)
  	cause.add_hit
  	#take money out
  end
end
