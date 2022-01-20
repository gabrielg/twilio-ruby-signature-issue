##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'Mobile' do
  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .incoming_phone_numbers \
                       .mobile.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/IncomingPhoneNumbers/Mobile.json',
    ))).to eq(true)
  end

  it "receives read_full responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "end": 0,
          "first_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/IncomingPhoneNumbers/Mobile.json?FriendlyName=friendly_name&Beta=true&PhoneNumber=%2B19876543210&PageSize=50&Page=0",
          "incoming_phone_numbers": [
              {
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "address_requirements": "none",
                  "address_sid": "ADaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "api_version": "2010-04-01",
                  "beta": null,
                  "capabilities": {
                      "mms": true,
                      "sms": false,
                      "voice": true
                  },
                  "date_created": "Thu, 30 Jul 2015 23:19:04 +0000",
                  "date_updated": "Thu, 30 Jul 2015 23:19:04 +0000",
                  "emergency_status": "Active",
                  "emergency_address_sid": "ADaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "emergency_address_status": "registered",
                  "friendly_name": "(808) 925-5327",
                  "identity_sid": "RIaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "origin": "origin",
                  "phone_number": "+18089255327",
                  "sid": "PNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "sms_application_sid": "",
                  "sms_fallback_method": "POST",
                  "sms_fallback_url": "",
                  "sms_method": "POST",
                  "sms_url": "",
                  "status_callback": "",
                  "status_callback_method": "POST",
                  "trunk_sid": null,
                  "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/IncomingPhoneNumbers/PNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json",
                  "voice_application_sid": "",
                  "voice_caller_id_lookup": false,
                  "voice_fallback_method": "POST",
                  "voice_fallback_url": null,
                  "voice_method": "POST",
                  "voice_url": null,
                  "bundle_sid": "BUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "voice_receive_mode": "voice",
                  "status": "in-use"
              }
          ],
          "next_page_uri": null,
          "page": 0,
          "page_size": 50,
          "previous_page_uri": null,
          "start": 0,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/IncomingPhoneNumbers/Mobile.json?FriendlyName=friendly_name&Beta=true&PhoneNumber=%2B19876543210&PageSize=50&Page=0"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .incoming_phone_numbers \
                              .mobile.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "end": 0,
          "first_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/IncomingPhoneNumbers/Mobile.json?FriendlyName=friendly_name&Beta=true&PhoneNumber=%2B19876543210&PageSize=50&Page=0",
          "incoming_phone_numbers": [],
          "next_page_uri": null,
          "page": 0,
          "page_size": 50,
          "previous_page_uri": null,
          "start": 0,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/IncomingPhoneNumbers/Mobile.json?FriendlyName=friendly_name&Beta=true&PhoneNumber=%2B19876543210&PageSize=50&Page=0"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .incoming_phone_numbers \
                              .mobile.list()

    expect(actual).to_not eq(nil)
  end

  it "can create" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .incoming_phone_numbers \
                       .mobile.create(phone_number: '+15017122661')
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {'PhoneNumber' => '+15017122661', }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/IncomingPhoneNumbers/Mobile.json',
        data: values,
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "address_requirements": "none",
          "address_sid": "ADaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "api_version": "2010-04-01",
          "beta": false,
          "capabilities": {
              "voice": true,
              "sms": false,
              "mms": true,
              "fax": false
          },
          "date_created": "Thu, 30 Jul 2015 23:19:04 +0000",
          "date_updated": "Thu, 30 Jul 2015 23:19:04 +0000",
          "emergency_status": "Active",
          "emergency_address_sid": "ADaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "emergency_address_status": "registered",
          "friendly_name": "friendly_name",
          "identity_sid": "RIaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "origin": "origin",
          "phone_number": "+18089255327",
          "sid": "PNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "sms_application_sid": "APaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "sms_fallback_method": "GET",
          "sms_fallback_url": "https://example.com",
          "sms_method": "GET",
          "sms_url": "https://example.com",
          "status_callback": "https://example.com",
          "status_callback_method": "GET",
          "trunk_sid": null,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/IncomingPhoneNumbers/PNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json",
          "voice_application_sid": "APaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "voice_caller_id_lookup": true,
          "voice_fallback_method": "GET",
          "voice_fallback_url": "https://example.com",
          "voice_method": "GET",
          "voice_url": "https://example.com",
          "bundle_sid": "BUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "voice_receive_mode": "voice",
          "status": "in-use"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .incoming_phone_numbers \
                              .mobile.create(phone_number: '+15017122661')

    expect(actual).to_not eq(nil)
  end
end