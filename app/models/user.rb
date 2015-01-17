class User < ActiveRecord::Base
  has_many :causes, dependent: :destroy
  validates :email, presence: true
end
