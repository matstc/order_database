# Load the Rails application.
require File.expand_path('../application', __FILE__)


# Load the app's custom environment variables here, before environments/*.rb
app_env_vars = File.join(Rails.root, 'config', 'initializers', 'app_env_vars.rb')
load(app_env_vars) if File.exists?(app_env_vars)



# Initialize the Rails application.
MujeresCambiaMail::Application.initialize!

# ActionMailer::Base.delivery_method = :smtp
  
# ActionMailer::Base.smtp_settings  = {
#     address:              'smtp.gmail.com',
#     port:                 587,
#     domain:               'mujerescambia.com',
#     user_name:            ENV["EMAIL"],
#     password:             ENV["PASSWORD"],
#     authentication:       'plain',
#     enable_starttls_auto: true  }