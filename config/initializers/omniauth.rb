OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  configure do |config|
    config.path_prefix = '/auth'
  end
  provider :facebook, "343918805807110","695007695f0143b9d392300f53470d78" , {:scope => 'user_about_me', :client_options => {:ca_file => '/usr/lib/ssl/certs/ca-certificates.crt'}}}
end