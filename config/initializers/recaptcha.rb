# config/initializers/recaptcha.rb
Recaptcha.configure do |config|
  config.site_key  = '6LcI2XoUAAAAAFNVCA8l9Xs44pqX3OQVN8LK477j'
  config.secret_key = Rails.application.credentials.recaptcha[:secret_key]
end
