##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'Service' do
  it "can create" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.messaging.v1.services.create(friendly_name: 'friendly_name')
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {'FriendlyName' => 'friendly_name', }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://messaging.twilio.com/v1/Services',
        data: values,
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "sid": "MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "2015-07-30T20:12:31Z",
          "date_updated": "2015-07-30T20:12:33Z",
          "friendly_name": "My Service!",
          "inbound_request_url": "https://www.example.com/",
          "inbound_method": "POST",
          "fallback_url": "https://www.example.com",
          "fallback_method": "GET",
          "status_callback": "https://www.example.com",
          "sticky_sender": true,
          "smart_encoding": false,
          "mms_converter": true,
          "fallback_to_long_code": true,
          "scan_message_content": "inherit",
          "area_code_geomatch": true,
          "validity_period": 600,
          "synchronous_validation": true,
          "usecase": "marketing",
          "us_app_to_person_registered": false,
          "use_inbound_webhook_on_number": true,
          "links": {
              "phone_numbers": "https://messaging.twilio.com/v1/Services/MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/PhoneNumbers",
              "short_codes": "https://messaging.twilio.com/v1/Services/MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/ShortCodes",
              "alpha_senders": "https://messaging.twilio.com/v1/Services/MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/AlphaSenders",
              "messages": "https://messaging.twilio.com/v1/Services/MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages",
              "broadcasts": "https://messaging.twilio.com/v1/Services/MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Broadcasts",
              "us_app_to_person": "https://messaging.twilio.com/v1/Services/MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Compliance/Usa2p",
              "us_app_to_person_usecases": "https://messaging.twilio.com/v1/Services/MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Compliance/Usa2p/Usecases"
          },
          "url": "https://messaging.twilio.com/v1/Services/MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.messaging.v1.services.create(friendly_name: 'friendly_name')

    expect(actual).to_not eq(nil)
  end

  it "can update" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.messaging.v1.services('MGXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://messaging.twilio.com/v1/Services/MGXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives update responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "friendly_name": "My Service!",
          "sid": "MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "2015-07-30T20:12:31Z",
          "date_updated": "2015-07-30T20:12:33Z",
          "sticky_sender": false,
          "mms_converter": true,
          "smart_encoding": false,
          "fallback_to_long_code": true,
          "scan_message_content": "inherit",
          "synchronous_validation": true,
          "area_code_geomatch": true,
          "validity_period": 600,
          "inbound_request_url": "https://www.example.com",
          "inbound_method": "POST",
          "fallback_url": null,
          "fallback_method": "POST",
          "status_callback": "https://www.example.com",
          "usecase": "marketing",
          "us_app_to_person_registered": false,
          "use_inbound_webhook_on_number": true,
          "links": {
              "phone_numbers": "https://messaging.twilio.com/v1/Services/MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/PhoneNumbers",
              "short_codes": "https://messaging.twilio.com/v1/Services/MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/ShortCodes",
              "alpha_senders": "https://messaging.twilio.com/v1/Services/MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/AlphaSenders",
              "messages": "https://messaging.twilio.com/v1/Services/MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages",
              "broadcasts": "https://messaging.twilio.com/v1/Services/MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Broadcasts",
              "us_app_to_person": "https://messaging.twilio.com/v1/Services/MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Compliance/Usa2p",
              "us_app_to_person_usecases": "https://messaging.twilio.com/v1/Services/MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Compliance/Usa2p/Usecases"
          },
          "url": "https://messaging.twilio.com/v1/Services/MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.messaging.v1.services('MGXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()

    expect(actual).to_not eq(nil)
  end

  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.messaging.v1.services.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://messaging.twilio.com/v1/Services',
    ))).to eq(true)
  end

  it "receives read_full responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "meta": {
              "page": 0,
              "page_size": 50,
              "first_page_url": "https://messaging.twilio.com/v1/Services?PageSize=50&Page=0",
              "previous_page_url": null,
              "next_page_url": null,
              "key": "services",
              "url": "https://messaging.twilio.com/v1/Services?PageSize=50&Page=0"
          },
          "services": [
              {
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "friendly_name": "My Service!",
                  "sid": "MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "date_created": "2015-07-30T20:12:31Z",
                  "date_updated": "2015-07-30T20:12:33Z",
                  "sticky_sender": true,
                  "mms_converter": true,
                  "smart_encoding": false,
                  "fallback_to_long_code": true,
                  "area_code_geomatch": true,
                  "validity_period": 600,
                  "scan_message_content": "inherit",
                  "synchronous_validation": true,
                  "inbound_request_url": "https://www.example.com/",
                  "inbound_method": "POST",
                  "fallback_url": null,
                  "fallback_method": "POST",
                  "status_callback": "https://www.example.com",
                  "usecase": "marketing",
                  "us_app_to_person_registered": false,
                  "use_inbound_webhook_on_number": false,
                  "links": {
                      "phone_numbers": "https://messaging.twilio.com/v1/Services/MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/PhoneNumbers",
                      "short_codes": "https://messaging.twilio.com/v1/Services/MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/ShortCodes",
                      "alpha_senders": "https://messaging.twilio.com/v1/Services/MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/AlphaSenders",
                      "messages": "https://messaging.twilio.com/v1/Services/MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages",
                      "broadcasts": "https://messaging.twilio.com/v1/Services/MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Broadcasts",
                      "us_app_to_person": "https://messaging.twilio.com/v1/Services/MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Compliance/Usa2p",
                      "us_app_to_person_usecases": "https://messaging.twilio.com/v1/Services/MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Compliance/Usa2p/Usecases"
                  },
                  "url": "https://messaging.twilio.com/v1/Services/MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
              }
          ]
      }
      ]
    ))

    actual = @client.messaging.v1.services.list()

    expect(actual).to_not eq(nil)
  end

  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.messaging.v1.services('MGXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://messaging.twilio.com/v1/Services/MGXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "sid": "MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "2015-07-30T20:12:31Z",
          "date_updated": "2015-07-30T20:12:33Z",
          "friendly_name": "My Service!",
          "inbound_request_url": "https://www.example.com/",
          "inbound_method": "POST",
          "fallback_url": null,
          "fallback_method": "POST",
          "status_callback": "https://www.example.com",
          "sticky_sender": true,
          "mms_converter": true,
          "smart_encoding": false,
          "fallback_to_long_code": true,
          "area_code_geomatch": true,
          "validity_period": 600,
          "scan_message_content": "inherit",
          "synchronous_validation": true,
          "usecase": "marketing",
          "us_app_to_person_registered": false,
          "use_inbound_webhook_on_number": true,
          "links": {
              "phone_numbers": "https://messaging.twilio.com/v1/Services/MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/PhoneNumbers",
              "short_codes": "https://messaging.twilio.com/v1/Services/MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/ShortCodes",
              "alpha_senders": "https://messaging.twilio.com/v1/Services/MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/AlphaSenders",
              "messages": "https://messaging.twilio.com/v1/Services/MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages",
              "broadcasts": "https://messaging.twilio.com/v1/Services/MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Broadcasts",
              "us_app_to_person": "https://messaging.twilio.com/v1/Services/MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Compliance/Usa2p",
              "us_app_to_person_usecases": "https://messaging.twilio.com/v1/Services/MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Compliance/Usa2p/Usecases"
          },
          "url": "https://messaging.twilio.com/v1/Services/MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.messaging.v1.services('MGXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()

    expect(actual).to_not eq(nil)
  end

  it "can delete" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.messaging.v1.services('MGXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').delete()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'delete',
        url: 'https://messaging.twilio.com/v1/Services/MGXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives delete responses" do
    @holodeck.mock(Twilio::Response.new(
        204,
      nil,
    ))

    actual = @client.messaging.v1.services('MGXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').delete()

    expect(actual).to eq(true)
  end
end