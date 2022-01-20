##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'Assistant' do
  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.preview.understand.assistants('UAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://preview.twilio.com/understand/Assistants/UAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "2017-07-04T08:34:00Z",
          "date_updated": "2017-07-04T08:34:00Z",
          "friendly_name": "so so friendly",
          "latest_model_build_sid": null,
          "log_queries": true,
          "sid": "UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "unique_name": "so-so-unique",
          "links": {
              "field_types": "https://preview.twilio.com/understand/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/FieldTypes",
              "tasks": "https://preview.twilio.com/understand/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Tasks",
              "model_builds": "https://preview.twilio.com/understand/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/ModelBuilds",
              "queries": "https://preview.twilio.com/understand/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Queries",
              "assistant_fallback_actions": "https://preview.twilio.com/understand/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/FallbackActions",
              "assistant_initiation_actions": "https://preview.twilio.com/understand/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/InitiationActions",
              "dialogues": "https://preview.twilio.com/understand/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Dialogues",
              "style_sheet": "https://preview.twilio.com/understand/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/StyleSheet"
          },
          "url": "https://preview.twilio.com/understand/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "callback_url": "https://example.com/callback_url",
          "callback_events": "model_build_completed model_build_failed"
      }
      ]
    ))

    actual = @client.preview.understand.assistants('UAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()

    expect(actual).to_not eq(nil)
  end

  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.preview.understand.assistants.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://preview.twilio.com/understand/Assistants',
    ))).to eq(true)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "assistants": [],
          "meta": {
              "first_page_url": "https://preview.twilio.com/understand/Assistants?PageSize=50&Page=0",
              "key": "assistants",
              "next_page_url": null,
              "page": 0,
              "page_size": 50,
              "previous_page_url": null,
              "url": "https://preview.twilio.com/understand/Assistants?PageSize=50&Page=0"
          }
      }
      ]
    ))

    actual = @client.preview.understand.assistants.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_full responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "assistants": [
              {
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "date_created": "2017-07-04T08:34:00Z",
                  "date_updated": "2017-07-04T08:34:00Z",
                  "friendly_name": "so so friendly",
                  "latest_model_build_sid": null,
                  "log_queries": true,
                  "sid": "UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "unique_name": "so-so-unique",
                  "links": {
                      "field_types": "https://preview.twilio.com/understand/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/FieldTypes",
                      "tasks": "https://preview.twilio.com/understand/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Tasks",
                      "model_builds": "https://preview.twilio.com/understand/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/ModelBuilds",
                      "queries": "https://preview.twilio.com/understand/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Queries",
                      "assistant_fallback_actions": "https://preview.twilio.com/understand/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/FallbackActions",
                      "assistant_initiation_actions": "https://preview.twilio.com/understand/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/InitiationActions",
                      "dialogues": "https://preview.twilio.com/understand/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Dialogues",
                      "style_sheet": "https://preview.twilio.com/understand/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/StyleSheet"
                  },
                  "url": "https://preview.twilio.com/understand/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "callback_url": "https://example.com/callback_url",
                  "callback_events": "model_build_completed model_build_failed"
              }
          ],
          "meta": {
              "first_page_url": "https://preview.twilio.com/understand/Assistants?PageSize=50&Page=0",
              "key": "assistants",
              "next_page_url": null,
              "page": 0,
              "page_size": 50,
              "previous_page_url": null,
              "url": "https://preview.twilio.com/understand/Assistants?PageSize=50&Page=0"
          }
      }
      ]
    ))

    actual = @client.preview.understand.assistants.list()

    expect(actual).to_not eq(nil)
  end

  it "can create" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.preview.understand.assistants.create()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://preview.twilio.com/understand/Assistants',
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "2017-07-04T08:34:00Z",
          "date_updated": "2017-07-04T08:34:00Z",
          "friendly_name": "so so friendly",
          "latest_model_build_sid": null,
          "log_queries": true,
          "sid": "UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "unique_name": "so-so-unique",
          "links": {
              "field_types": "https://preview.twilio.com/understand/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/FieldTypes",
              "tasks": "https://preview.twilio.com/understand/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Tasks",
              "model_builds": "https://preview.twilio.com/understand/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/ModelBuilds",
              "queries": "https://preview.twilio.com/understand/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Queries",
              "assistant_fallback_actions": "https://preview.twilio.com/understand/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/FallbackActions",
              "assistant_initiation_actions": "https://preview.twilio.com/understand/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/InitiationActions",
              "dialogues": "https://preview.twilio.com/understand/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Dialogues",
              "style_sheet": "https://preview.twilio.com/understand/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/StyleSheet"
          },
          "url": "https://preview.twilio.com/understand/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "callback_url": "https://example.com/callback_url",
          "callback_events": "model_build_completed model_build_failed"
      }
      ]
    ))

    actual = @client.preview.understand.assistants.create()

    expect(actual).to_not eq(nil)
  end

  it "can update" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.preview.understand.assistants('UAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://preview.twilio.com/understand/Assistants/UAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives update responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "2017-07-04T08:34:00Z",
          "date_updated": "2017-07-04T08:34:00Z",
          "friendly_name": "so so friendly",
          "latest_model_build_sid": null,
          "log_queries": true,
          "sid": "UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "unique_name": "so-so-unique",
          "links": {
              "field_types": "https://preview.twilio.com/understand/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/FieldTypes",
              "tasks": "https://preview.twilio.com/understand/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Tasks",
              "model_builds": "https://preview.twilio.com/understand/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/ModelBuilds",
              "queries": "https://preview.twilio.com/understand/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Queries",
              "assistant_fallback_actions": "https://preview.twilio.com/understand/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/FallbackActions",
              "assistant_initiation_actions": "https://preview.twilio.com/understand/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/InitiationActions",
              "dialogues": "https://preview.twilio.com/understand/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Dialogues",
              "style_sheet": "https://preview.twilio.com/understand/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/StyleSheet"
          },
          "url": "https://preview.twilio.com/understand/Assistants/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "callback_url": "https://example.com/callback_url",
          "callback_events": "model_build_completed model_build_failed"
      }
      ]
    ))

    actual = @client.preview.understand.assistants('UAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()

    expect(actual).to_not eq(nil)
  end

  it "can delete" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.preview.understand.assistants('UAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').delete()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'delete',
        url: 'https://preview.twilio.com/understand/Assistants/UAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives delete responses" do
    @holodeck.mock(Twilio::Response.new(
        204,
      nil,
    ))

    actual = @client.preview.understand.assistants('UAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').delete()

    expect(actual).to eq(true)
  end
end