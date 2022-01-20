##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'UserConversation' do
  it "can update" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.conversations.v1.users('USXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .user_conversations('CHXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://conversations.twilio.com/v1/Users/USXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Conversations/CHXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives update responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "chat_service_sid": "ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "conversation_sid": "CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "unread_messages_count": 100,
          "last_read_message_index": 100,
          "participant_sid": "MBaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "user_sid": "USaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "friendly_name": "friendly_name",
          "conversation_state": "inactive",
          "timers": {
              "date_inactive": "2015-12-16T22:19:38Z",
              "date_closed": "2015-12-16T22:28:38Z"
          },
          "attributes": "{}",
          "date_created": "2015-07-30T20:00:00Z",
          "date_updated": "2015-07-30T20:00:00Z",
          "created_by": "created_by",
          "notification_level": "default",
          "unique_name": "unique_name",
          "url": "https://conversations.twilio.com/v1/Users/USaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conversations/CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "links": {
              "participant": "https://conversations.twilio.com/v1/Conversations/CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants/MBaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
              "conversation": "https://conversations.twilio.com/v1/Conversations/CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
          }
      }
      ]
    ))

    actual = @client.conversations.v1.users('USXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                     .user_conversations('CHXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()

    expect(actual).to_not eq(nil)
  end

  it "can delete" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.conversations.v1.users('USXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .user_conversations('CHXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').delete()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'delete',
        url: 'https://conversations.twilio.com/v1/Users/USXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Conversations/CHXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives delete responses" do
    @holodeck.mock(Twilio::Response.new(
        204,
      nil,
    ))

    actual = @client.conversations.v1.users('USXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                     .user_conversations('CHXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').delete()

    expect(actual).to eq(true)
  end

  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.conversations.v1.users('USXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .user_conversations('CHXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://conversations.twilio.com/v1/Users/USXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Conversations/CHXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "chat_service_sid": "ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "conversation_sid": "CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "unread_messages_count": 100,
          "last_read_message_index": 100,
          "participant_sid": "MBaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "user_sid": "USaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "friendly_name": "friendly_name",
          "conversation_state": "inactive",
          "timers": {
              "date_inactive": "2015-12-16T22:19:38Z",
              "date_closed": "2015-12-16T22:28:38Z"
          },
          "attributes": "{}",
          "date_created": "2015-07-30T20:00:00Z",
          "date_updated": "2015-07-30T20:00:00Z",
          "created_by": "created_by",
          "notification_level": "default",
          "unique_name": "unique_name",
          "url": "https://conversations.twilio.com/v1/Users/USaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conversations/CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "links": {
              "participant": "https://conversations.twilio.com/v1/Conversations/CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants/MBaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
              "conversation": "https://conversations.twilio.com/v1/Conversations/CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
          }
      }
      ]
    ))

    actual = @client.conversations.v1.users('USXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                     .user_conversations('CHXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()

    expect(actual).to_not eq(nil)
  end

  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.conversations.v1.users('USXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .user_conversations.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://conversations.twilio.com/v1/Users/USXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Conversations',
    ))).to eq(true)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "conversations": [],
          "meta": {
              "page": 0,
              "page_size": 50,
              "first_page_url": "https://conversations.twilio.com/v1/Users/USaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conversations?PageSize=50&Page=0",
              "previous_page_url": null,
              "url": "https://conversations.twilio.com/v1/Users/USaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conversations?PageSize=50&Page=0",
              "next_page_url": null,
              "key": "conversations"
          }
      }
      ]
    ))

    actual = @client.conversations.v1.users('USXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                     .user_conversations.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_full responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "conversations": [
              {
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "chat_service_sid": "ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "conversation_sid": "CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "unread_messages_count": 100,
                  "last_read_message_index": 100,
                  "participant_sid": "MBaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "user_sid": "USaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "friendly_name": "friendly_name",
                  "conversation_state": "inactive",
                  "timers": {
                      "date_inactive": "2015-12-16T22:19:38Z",
                      "date_closed": "2015-12-16T22:28:38Z"
                  },
                  "attributes": "{}",
                  "date_created": "2015-07-30T20:00:00Z",
                  "date_updated": "2015-07-30T20:00:00Z",
                  "created_by": "created_by",
                  "notification_level": "default",
                  "unique_name": "unique_name",
                  "url": "https://conversations.twilio.com/v1/Users/USaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conversations/CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "links": {
                      "participant": "https://conversations.twilio.com/v1/Conversations/CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants/MBaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                      "conversation": "https://conversations.twilio.com/v1/Conversations/CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
                  }
              }
          ],
          "meta": {
              "page": 0,
              "page_size": 50,
              "first_page_url": "https://conversations.twilio.com/v1/Users/USaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conversations?PageSize=50&Page=0",
              "previous_page_url": null,
              "url": "https://conversations.twilio.com/v1/Users/USaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Conversations?PageSize=50&Page=0",
              "next_page_url": null,
              "key": "conversations"
          }
      }
      ]
    ))

    actual = @client.conversations.v1.users('USXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                     .user_conversations.list()

    expect(actual).to_not eq(nil)
  end
end