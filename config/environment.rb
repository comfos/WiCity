# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
WiCity::Application.initialize!

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    :address => 'smtp.live.com',
    :port => 587,
    :domain => 'mail.live.com',
    :user_name => 'wicity@live.it',
    :password => '[password]',
    :authentication       => 'plain',
    :enable_starttls_auto => true
}
