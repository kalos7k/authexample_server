# Load the Rails application.
require File.expand_path('../application', __FILE__)

Rails.application.routes.default_url_options[:host] = '???'

# Initialize the Rails application.
AuthexampleWebapp::Application.initialize!


