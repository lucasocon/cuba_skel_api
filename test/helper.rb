ENV['RACK_ENV'] = 'test'
ENV['SESSION_SECRET'] = rand(36**41).to_s(36)

require 'minitest/autorun'
require 'rack/test'

require File.expand_path '../../app.rb', __FILE__

include Rack::Test::Methods

def app
  Cuba
end
