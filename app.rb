require 'rack/protectio'
require 'cuba'
require 'sequel'
require 'json'

# set default environment
ENV['RACK_ENV'] ||= 'development'

# Require all application files.
Dir['./lib/**/*.rb'].each        { |rb| require rb }
Dir['./models/**/*.rb'].each     { |rb| require rb }
Dir['./routes/**/*.rb'].each     { |rb| require rb }
Dir['./helpers/**/*.rb'].each    { |rb| require rb }
Dir['./validators/**/*.r'].each { |rb| require rb }

# database
Sequel::Model.plugin :timestamps

# Load rack middlewares.
Cuba.use Rack::MethodOverride
Cuba.use Rack::Head
Cuba.use Rack::Session::Cookie, secret: ENV['SESSION_SECRET']
Cuba.use Rack::Protection
Cuba.use Rack::Protection::RemoteReferrer

# Cuba Helpers.
Cuba.plugin APIHelpers

# Finally, define the application routes.
Cuba.define do
  on 'api' do
    run APIRoutes
  end

  api_not_found!
end
