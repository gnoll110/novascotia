ENV['RACK_ENV'] = 'test'

require 'sinatra'
require 'rack-flash'
#require File.join(File.dirname(__FILE__), '..', '..', 'reports.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = Sinatra::Application

class Sinatra::ApplicationWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  Sinatra::ApplicationWorld.new
end
