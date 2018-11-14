# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.sendgrid.net',
  :port           => '587',
  :authentication => :plain,
  :user_name      => Rails.application.credentials.email[:sendgrid][:user],
  :password       => Rails.application.credentials.email[:sendgrid][:pswd],
  :domain         => 'localhost',
  :enable_starttls_auto => true
}
