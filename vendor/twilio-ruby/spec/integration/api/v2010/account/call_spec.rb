##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'Call' do
  it "can create" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .calls.create(to: '+15558675310', from: '+15017122661')
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {'To' => '+15558675310', 'From' => '+15017122661', }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Calls.json',
        data: values,
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "annotation": null,
          "answered_by": null,
          "api_version": "2010-04-01",
          "caller_name": null,
          "date_created": "Tue, 31 Aug 2010 20:36:28 +0000",
          "date_updated": "Tue, 31 Aug 2010 20:36:44 +0000",
          "direction": "inbound",
          "duration": "15",
          "end_time": "Tue, 31 Aug 2010 20:36:44 +0000",
          "forwarded_from": "+141586753093",
          "from": "+14158675308",
          "from_formatted": "(415) 867-5308",
          "group_sid": null,
          "parent_call_sid": null,
          "phone_number_sid": "PNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "price": "-0.03000",
          "price_unit": "USD",
          "sid": "CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "start_time": "Tue, 31 Aug 2010 20:36:29 +0000",
          "status": "completed",
          "subresource_uris": {
              "notifications": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Notifications.json",
              "recordings": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings.json",
              "feedback": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Feedback.json",
              "feedback_summaries": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/FeedbackSummary.json",
              "payments": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Payments.json",
              "events": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Events.json",
              "siprec": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Siprec.json"
          },
          "to": "+14158675309",
          "to_formatted": "(415) 867-5309",
          "trunk_sid": null,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json",
          "queue_time": "1000"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .calls.create(to: '+15558675310', from: '+15017122661')

    expect(actual).to_not eq(nil)
  end

  it "receives create_with_twiml responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "annotation": null,
          "answered_by": null,
          "api_version": "2010-04-01",
          "caller_name": null,
          "date_created": "Tue, 31 Aug 2010 20:36:28 +0000",
          "date_updated": "Tue, 31 Aug 2010 20:36:44 +0000",
          "direction": "inbound",
          "duration": "15",
          "end_time": "Tue, 31 Aug 2010 20:36:44 +0000",
          "forwarded_from": "+141586753093",
          "from": "+14158675308",
          "from_formatted": "(415) 867-5308",
          "group_sid": null,
          "parent_call_sid": null,
          "phone_number_sid": "PNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "price": "-0.03000",
          "price_unit": "USD",
          "sid": "CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "start_time": "Tue, 31 Aug 2010 20:36:29 +0000",
          "status": "completed",
          "subresource_uris": {
              "notifications": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Notifications.json",
              "recordings": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings.json",
              "feedback": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Feedback.json",
              "feedback_summaries": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/FeedbackSummary.json",
              "payments": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Payments.json",
              "events": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Events.json",
              "siprec": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Siprec.json"
          },
          "to": "+14158675309",
          "to_formatted": "(415) 867-5309",
          "trunk_sid": null,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json",
          "queue_time": "1000"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .calls.create(to: '+15558675310', from: '+15017122661')

    expect(actual).to_not eq(nil)
  end

  it "can delete" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .calls('CAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').delete()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'delete',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Calls/CAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX.json',
    ))).to eq(true)
  end

  it "receives delete responses" do
    @holodeck.mock(Twilio::Response.new(
        204,
      nil,
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .calls('CAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').delete()

    expect(actual).to eq(true)
  end

  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .calls('CAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Calls/CAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX.json',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "annotation": "billingreferencetag",
          "answered_by": "machine_start",
          "api_version": "2010-04-01",
          "caller_name": "callerid",
          "date_created": "Fri, 18 Oct 2019 17:00:00 +0000",
          "date_updated": "Fri, 18 Oct 2019 17:01:00 +0000",
          "direction": "outbound-api",
          "duration": "4",
          "end_time": "Fri, 18 Oct 2019 17:03:00 +0000",
          "forwarded_from": "calledvia",
          "from": "+13051416799",
          "from_formatted": "(305) 141-6799",
          "group_sid": "GPdeadbeefdeadbeefdeadbeefdeadbeef",
          "parent_call_sid": "CAdeadbeefdeadbeefdeadbeefdeadbeef",
          "phone_number_sid": "PNdeadbeefdeadbeefdeadbeefdeadbeef",
          "price": "-0.200",
          "price_unit": "USD",
          "sid": "CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "start_time": "Fri, 18 Oct 2019 17:02:00 +0000",
          "status": "completed",
          "subresource_uris": {
              "notifications": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Notifications.json",
              "recordings": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings.json",
              "feedback": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Feedback.json",
              "feedback_summaries": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/FeedbackSummary.json",
              "payments": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Payments.json",
              "events": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Events.json",
              "siprec": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Siprec.json"
          },
          "to": "+13051913581",
          "to_formatted": "(305) 191-3581",
          "trunk_sid": "TKdeadbeefdeadbeefdeadbeefdeadbeef",
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json",
          "queue_time": "1000"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .calls('CAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()

    expect(actual).to_not eq(nil)
  end

  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .calls.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Calls.json',
    ))).to eq(true)
  end

  it "receives read_full_page1 responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "calls": [
              {
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "annotation": "billingreferencetag1",
                  "answered_by": "machine_start",
                  "api_version": "2010-04-01",
                  "caller_name": "callerid1",
                  "date_created": "Fri, 18 Oct 2019 17:00:00 +0000",
                  "date_updated": "Fri, 18 Oct 2019 17:01:00 +0000",
                  "direction": "outbound-api",
                  "duration": "4",
                  "end_time": "Fri, 18 Oct 2019 17:03:00 +0000",
                  "forwarded_from": "calledvia1",
                  "from": "+13051416799",
                  "from_formatted": "(305) 141-6799",
                  "group_sid": "GPdeadbeefdeadbeefdeadbeefdeadbeef",
                  "parent_call_sid": "CAdeadbeefdeadbeefdeadbeefdeadbeef",
                  "phone_number_sid": "PNdeadbeefdeadbeefdeadbeefdeadbeef",
                  "price": "-0.200",
                  "price_unit": "USD",
                  "sid": "CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "start_time": "Fri, 18 Oct 2019 17:02:00 +0000",
                  "status": "completed",
                  "subresource_uris": {
                      "feedback": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Feedback.json",
                      "feedback_summaries": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/FeedbackSummary.json",
                      "notifications": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Notifications.json",
                      "recordings": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings.json",
                      "payments": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Payments.json",
                      "events": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Events.json",
                      "siprec": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Siprec.json"
                  },
                  "to": "+13051913581",
                  "to_formatted": "(305) 191-3581",
                  "trunk_sid": "TKdeadbeefdeadbeefdeadbeefdeadbeef",
                  "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json",
                  "queue_time": "1000"
              },
              {
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "annotation": "billingreferencetag2",
                  "answered_by": "human",
                  "api_version": "2010-04-01",
                  "caller_name": "callerid2",
                  "date_created": "Fri, 18 Oct 2019 16:00:00 +0000",
                  "date_updated": "Fri, 18 Oct 2019 16:01:00 +0000",
                  "direction": "inbound",
                  "duration": "3",
                  "end_time": "Fri, 18 Oct 2019 16:03:00 +0000",
                  "forwarded_from": "calledvia2",
                  "from": "+13051416798",
                  "from_formatted": "(305) 141-6798",
                  "group_sid": "GPdeadbeefdeadbeefdeadbeefdeadbeee",
                  "parent_call_sid": "CAdeadbeefdeadbeefdeadbeefdeadbeee",
                  "phone_number_sid": "PNdeadbeefdeadbeefdeadbeefdeadbeee",
                  "price": "-0.100",
                  "price_unit": "JPY",
                  "sid": "CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa0",
                  "start_time": "Fri, 18 Oct 2019 16:02:00 +0000",
                  "status": "completed",
                  "subresource_uris": {
                      "feedback": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa0/Feedback.json",
                      "feedback_summaries": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/FeedbackSummary.json",
                      "notifications": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa0/Notifications.json",
                      "recordings": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa0/Recordings.json",
                      "payments": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa0/Payments.json",
                      "events": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa0/Events.json",
                      "siprec": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa0/Siprec.json"
                  },
                  "to": "+13051913580",
                  "to_formatted": "(305) 191-3580",
                  "trunk_sid": "TKdeadbeefdeadbeefdeadbeefdeadbeef",
                  "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa0.json",
                  "queue_time": "1000"
              }
          ],
          "end": 1,
          "first_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls.json?Status=completed&To=%2B123456789&From=%2B987654321&StartTime=2008-01-02&ParentCallSid=CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&EndTime=2009-01-02&PageSize=2&Page=0",
          "next_page_uri": null,
          "page": 0,
          "page_size": 2,
          "previous_page_uri": null,
          "start": 0,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls.json?Status=completed&To=%2B123456789&From=%2B987654321&StartTime=2008-01-02&ParentCallSid=CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&EndTime=2009-01-02&PageSize=2&Page=0"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .calls.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_full_page2 responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "calls": [
              {
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "annotation": "billingreferencetag1",
                  "answered_by": "machine_start",
                  "api_version": "2010-04-01",
                  "caller_name": "callerid1",
                  "date_created": "Fri, 18 Oct 2019 17:00:00 +0000",
                  "date_updated": "Fri, 18 Oct 2019 17:01:00 +0000",
                  "direction": "outbound-api",
                  "duration": "4",
                  "end_time": "Fri, 18 Oct 2019 17:03:00 +0000",
                  "forwarded_from": "calledvia1",
                  "from": "+13051416799",
                  "from_formatted": "(305) 141-6799",
                  "group_sid": "GPdeadbeefdeadbeefdeadbeefdeadbeef",
                  "parent_call_sid": "CAdeadbeefdeadbeefdeadbeefdeadbeef",
                  "phone_number_sid": "PNdeadbeefdeadbeefdeadbeefdeadbeef",
                  "price": "-0.200",
                  "price_unit": "USD",
                  "sid": "CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "start_time": "Fri, 18 Oct 2019 17:02:00 +0000",
                  "status": "completed",
                  "subresource_uris": {
                      "feedback": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Feedback.json",
                      "feedback_summaries": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/FeedbackSummary.json",
                      "notifications": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Notifications.json",
                      "recordings": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings.json",
                      "payments": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Payments.json",
                      "events": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Events.json",
                      "siprec": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Siprec.json"
                  },
                  "to": "+13051913581",
                  "to_formatted": "(305) 191-3581",
                  "trunk_sid": "TKdeadbeefdeadbeefdeadbeefdeadbeef",
                  "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json",
                  "queue_time": "1000"
              },
              {
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "annotation": "billingreferencetag2",
                  "answered_by": "human",
                  "api_version": "2010-04-01",
                  "caller_name": "callerid2",
                  "date_created": "Fri, 18 Oct 2019 16:00:00 +0000",
                  "date_updated": "Fri, 18 Oct 2019 16:01:00 +0000",
                  "direction": "inbound",
                  "duration": "3",
                  "end_time": "Fri, 18 Oct 2019 16:03:00 +0000",
                  "forwarded_from": "calledvia2",
                  "from": "+13051416798",
                  "from_formatted": "(305) 141-6798",
                  "group_sid": "GPdeadbeefdeadbeefdeadbeefdeadbeee",
                  "parent_call_sid": "CAdeadbeefdeadbeefdeadbeefdeadbeee",
                  "phone_number_sid": "PNdeadbeefdeadbeefdeadbeefdeadbeee",
                  "price": "-0.100",
                  "price_unit": "JPY",
                  "sid": "CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa0",
                  "start_time": "Fri, 18 Oct 2019 16:02:00 +0000",
                  "status": "completed",
                  "subresource_uris": {
                      "feedback": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa0/Feedback.json",
                      "feedback_summaries": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/FeedbackSummary.json",
                      "notifications": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa0/Notifications.json",
                      "recordings": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa0/Recordings.json",
                      "payments": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa0/Payments.json",
                      "events": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa0/Events.json",
                      "siprec": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa0/Siprec.json"
                  },
                  "to": "+13051913580",
                  "to_formatted": "(305) 191-3580",
                  "trunk_sid": "TKdeadbeefdeadbeefdeadbeefdeadbeef",
                  "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa0.json",
                  "queue_time": "1000"
              }
          ],
          "end": 3,
          "first_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls.json?Status=completed&From=%2B987654321&ParentCallSid=CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&To=%2B123456789&StartTime=2008-01-02&EndTime=2009-01-02&PageSize=2&Page=0",
          "next_page_uri": null,
          "page": 1,
          "page_size": 2,
          "previous_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls.json?Status=completed&From=%2B987654321&ParentCallSid=CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&To=%2B123456789&StartTime=2008-01-02&EndTime=2009-01-02&PageSize=2&Page=0&PageToken=PBCAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "start": 2,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls.json?Status=completed&From=%2B987654321&ParentCallSid=CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&To=%2B123456789&StartTime=2008-01-02&EndTime=2009-01-02&PageSize=2&Page=1&PageToken=PACAdeadbeefdeadbeefdeadbeefdeadbeef"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .calls.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_empty_dates_greater responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "calls": [],
          "end": 0,
          "first_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls.json?Status=completed&To=%2B123456789&EndTime%3E=2009-01-02&From=%2B987654321&StartTime%3E=2008-01-02&ParentCallSid=CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&PageSize=2&Page=0",
          "next_page_uri": null,
          "page": 0,
          "page_size": 2,
          "previous_page_uri": null,
          "start": 0,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls.json?Status=completed&To=%2B123456789&EndTime%3E=2009-01-02&From=%2B987654321&StartTime%3E=2008-01-02&ParentCallSid=CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&PageSize=2&Page=0"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .calls.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_empty_dates_less responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "calls": [],
          "end": 0,
          "first_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls.json?EndTime%3C=2009-01-02&Status=completed&From=%2B987654321&To=%2B123456789&ParentCallSid=CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&StartTime%3C=2008-01-02&PageSize=2&Page=0",
          "next_page_uri": null,
          "page": 0,
          "page_size": 2,
          "previous_page_uri": null,
          "start": 0,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls.json?EndTime%3C=2009-01-02&Status=completed&From=%2B987654321&To=%2B123456789&ParentCallSid=CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&StartTime%3C=2008-01-02&PageSize=2&Page=0"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .calls.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_empty_date_fun_date_formats responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "calls": [],
          "end": 0,
          "first_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls.json?EndTime%3C=2019-06-11+22%3A05%3A25.000&Status=completed&From=%2B987654321&To=%2B123456789&ParentCallSid=CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&StartTime%3C=06%2F11%2F2019+22%3A05%3A25+MST&PageSize=2&Page=0",
          "next_page_uri": null,
          "page": 0,
          "page_size": 2,
          "previous_page_uri": null,
          "start": 0,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls.json?EndTime%3C=2019-06-11+22%3A05%3A25.000&Status=completed&From=%2B987654321&To=%2B123456789&ParentCallSid=CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&StartTime%3C=06%2F11%2F2019+22%3A05%3A25+MST&PageSize=2&Page=0"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .calls.list()

    expect(actual).to_not eq(nil)
  end

  it "can update" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .calls('CAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Calls/CAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX.json',
    ))).to eq(true)
  end

  it "receives update responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "annotation": null,
          "answered_by": null,
          "api_version": "2010-04-01",
          "caller_name": null,
          "date_created": "Tue, 31 Aug 2010 20:36:28 +0000",
          "date_updated": "Tue, 31 Aug 2010 20:36:44 +0000",
          "direction": "inbound",
          "duration": "15",
          "end_time": "Tue, 31 Aug 2010 20:36:44 +0000",
          "forwarded_from": "+141586753093",
          "from": "+14158675308",
          "from_formatted": "(415) 867-5308",
          "group_sid": null,
          "parent_call_sid": null,
          "phone_number_sid": "PNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "price": "-0.03000",
          "price_unit": "USD",
          "sid": "CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "start_time": "Tue, 31 Aug 2010 20:36:29 +0000",
          "status": "completed",
          "subresource_uris": {
              "notifications": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Notifications.json",
              "recordings": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings.json",
              "feedback": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Feedback.json",
              "feedback_summaries": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/FeedbackSummary.json",
              "payments": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Payments.json",
              "events": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Events.json",
              "siprec": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Siprec.json"
          },
          "to": "+14158675309",
          "to_formatted": "(415) 867-5309",
          "trunk_sid": null,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json",
          "queue_time": "1000"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .calls('CAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()

    expect(actual).to_not eq(nil)
  end

  it "receives cancel responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "annotation": null,
          "answered_by": null,
          "api_version": "2010-04-01",
          "caller_name": null,
          "date_created": "Tue, 31 Aug 2010 20:36:28 +0000",
          "date_updated": "Tue, 31 Aug 2010 20:36:44 +0000",
          "direction": "inbound",
          "duration": "15",
          "end_time": "Tue, 31 Aug 2010 20:36:44 +0000",
          "forwarded_from": "+141586753093",
          "from": "+14158675308",
          "from_formatted": "(415) 867-5308",
          "group_sid": null,
          "parent_call_sid": null,
          "phone_number_sid": "PNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "price": "-0.03000",
          "price_unit": "USD",
          "sid": "CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "start_time": "Tue, 31 Aug 2010 20:36:29 +0000",
          "status": "canceled",
          "subresource_uris": {
              "notifications": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Notifications.json",
              "recordings": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings.json",
              "feedback": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Feedback.json",
              "feedback_summaries": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/FeedbackSummary.json",
              "payments": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Payments.json",
              "events": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Events.json",
              "siprec": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Siprec.json"
          },
          "to": "+14158675309",
          "to_formatted": "(415) 867-5309",
          "trunk_sid": null,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json",
          "queue_time": "1000"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .calls('CAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()

    expect(actual).to_not eq(nil)
  end

  it "receives posttwiml responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "annotation": null,
          "answered_by": null,
          "api_version": "2010-04-01",
          "caller_name": null,
          "date_created": "Tue, 31 Aug 2010 20:36:28 +0000",
          "date_updated": "Tue, 31 Aug 2010 20:36:44 +0000",
          "direction": "inbound",
          "duration": "15",
          "end_time": "Tue, 31 Aug 2010 20:36:44 +0000",
          "forwarded_from": "+141586753093",
          "from": "+14158675308",
          "from_formatted": "(415) 867-5308",
          "group_sid": null,
          "parent_call_sid": null,
          "phone_number_sid": "PNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "price": "-0.03000",
          "price_unit": "USD",
          "sid": "CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "start_time": "Tue, 31 Aug 2010 20:36:29 +0000",
          "status": "canceled",
          "subresource_uris": {
              "notifications": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Notifications.json",
              "recordings": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings.json",
              "feedback": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Feedback.json",
              "feedback_summaries": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/FeedbackSummary.json",
              "payments": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Payments.json",
              "events": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Events.json",
              "siprec": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Siprec.json"
          },
          "to": "+14158675309",
          "to_formatted": "(415) 867-5309",
          "trunk_sid": null,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json",
          "queue_time": "1000"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .calls('CAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()

    expect(actual).to_not eq(nil)
  end

  it "receives updatetimelimit responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "annotation": null,
          "answered_by": null,
          "api_version": "2010-04-01",
          "caller_name": null,
          "date_created": "Tue, 31 Aug 2010 20:36:28 +0000",
          "date_updated": "Tue, 31 Aug 2010 20:36:44 +0000",
          "direction": "inbound",
          "duration": "15",
          "end_time": "Tue, 31 Aug 2010 20:36:44 +0000",
          "forwarded_from": "+141586753093",
          "from": "+14158675308",
          "from_formatted": "(415) 867-5308",
          "group_sid": null,
          "parent_call_sid": null,
          "phone_number_sid": "PNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "price": "-0.03000",
          "price_unit": "USD",
          "sid": "CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "start_time": "Tue, 31 Aug 2010 20:36:29 +0000",
          "status": "canceled",
          "subresource_uris": {
              "notifications": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Notifications.json",
              "recordings": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings.json",
              "feedback": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Feedback.json",
              "feedback_summaries": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/FeedbackSummary.json",
              "payments": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Payments.json",
              "events": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Events.json",
              "siprec": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Siprec.json"
          },
          "to": "+14158675309",
          "to_formatted": "(415) 867-5309",
          "trunk_sid": null,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json",
          "queue_time": "1000"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .calls('CAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()

    expect(actual).to_not eq(nil)
  end
end