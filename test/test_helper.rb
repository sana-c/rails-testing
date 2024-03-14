ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment" #loads the Rails application
require "rails/test_help" #library that provides a lot of testing functionality

class ActiveSupport::TestCase # class that all test classes inherit from
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors) # to speed up the test suite

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
   # Devise test helpers
  include Warden::Test::Helpers
  Warden.test_mode!
end

# Folder path for screenshots
Capybara.save_path = Rails.root.join("tmp/capybara")

