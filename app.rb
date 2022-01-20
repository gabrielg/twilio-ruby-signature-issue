require 'sinatra'
require 'twilio-ruby'

use Rack::TwilioWebhookAuthentication, nil, %r[\A/incoming\z] do |acct|
  ENV['TWILIO_AUTH_TOKEN']
end

get '/' do
  "Nothing to see here."
end

post '/incoming' do
  "Signature validation succeeded."
end
