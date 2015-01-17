require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "#hit increments hits" do
  	user = User.new(email: "tester@test.com", password: "tester")
  	user.save
  	cause = user.causes.new(name: "Cause")
  	cause.save
  	user.hit(cause.id)
  	assert_equal 1, Cause.find(cause.id).hits
  end
end
