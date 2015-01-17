require 'test_helper'

class CauseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "#add_hit increments hits" do
  	cause = Cause.new(name: "Cause")
  	cause.save
  	cause.add_hit
  	assert_equal 1, cause.hits
  end
end
