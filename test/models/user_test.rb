require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "full_name returns the capitalized first name and last name" do
    user = User.new(first_name: "jilali", last_name: "lennon")
    assert_equal "Jilali Lennon", user.full_name
  end
end
