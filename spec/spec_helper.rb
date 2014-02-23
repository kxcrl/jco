require 'rubygems'
require 'spork'

ENV['RACK_ENV'] = 'test'

Spork.prefork do
  require File.join(File.dirname(__FILE__), '..', 'main.rb')

  require 'rubygems'
  require 'sinatra'
  require 'rspec'
  require 'rack/test'
  require 'capybara'
  require 'capybara/dsl'
  require 'capybara/poltergeist'

  set :environment, :test
  set :run, false
  set :raise_errors, true
  set :logging, false

  RSpec.configure do |config|
    config.include Rack::Test::Methods
    config.include Capybara::DSL
  end

  Capybara.configure do |config|
    config.run_server = false
    config.javascript_driver = :poltergeist
  end

  Capybara.app = Sinatra::Application

  def app
    @app ||= Sinatra::Application
  end
end
