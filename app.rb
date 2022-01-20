require 'sinatra'
require 'twilio-ruby'

use Rack::TwilioWebhookAuthentication, nil, %r[\A/incoming\z] do |acct|
  ENV['TWILIO_AUTH_TOKEN']
end

get '/' do
  "Nothing to see here."
end

post '/incoming' do
  logger.info("Request signature: #{request.env['HTTP_X_TWILIO_SIGNATURE']}")
  logger.info("Request body: #{request.body.read.inspect}")
  logger.info("Request URL: #{request.url}")
  logger.info("Request media type: #{request.media_type}")

  "Signature validation succeeded."
end
