require 'simplecov'
SimpleCov.start 'rails'
ENV["RAILS_ENV"] ||= "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'contexts'

class ActiveSupport::TestCase
  ActiveRecord::Migration.check_pending!
  # include the Contexts module for all tests
  include Contexts

  # Prof. H's helper method to increase readability
  def deny(condition, msg="")
    assert !condition, msg
  end

end
