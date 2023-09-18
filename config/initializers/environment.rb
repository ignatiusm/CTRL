REDCAP_TOKEN = ENV['REDCAP_TOKEN']
REDCAP_API_URL = ENV['REDCAP_API_URL']
REDCAP_CONNECTION_ENABLED = ActiveModel::Type::Boolean.new.cast(
  ENV['REDCAP_CONNECTION_ENABLED'] || 'false'
)
OTP_ENABLED = ActiveModel::Type::Boolean.new.cast(
  ENV['OTP_ENABLED'] || 'true'
)
