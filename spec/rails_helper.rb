ENV["RAILS_ENV"] ||= "test"
require "spec_helper"
require File.expand_path("../../config/environment", __FILE__)
require "rspec/rails"
require "capybara/rails"
require "capybara/rspec"

Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

Capybara.configure do |config|
  config.match = :prefer_exact
end

RSpec.configure do |config|
  config.infer_spec_type_from_file_location!
end
