class User < ActiveRecord::Base
  has_many :causes, dependent: :destroy
  validates :email, presence: true


  def hit(cause_id)
  	cause = Cause.find(cause_id)
  	cause.add_hit
  	#take money out
  end
end
