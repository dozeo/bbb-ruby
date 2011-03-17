# encoding: utf-8
require 'spec_helper'
require 'bbb-ruby'

BBB_SECURITY_SALT = '4019366e5354d8df5fcd3a2b51f652d1'
BBB_URL = 'http://dozeo-two.dozeo.local/bigbluebutton/api'
MEETING_ID = 'gem_spec_test'
MEETING_NAME = 'Test the new API Gem'
MODERATOR_PASSWORD = '333444'
MODERATOR_NAME = 'Jake'
ATTENDEE_PASSWORD = '111222'
ATTENDEE_NAME = 'Eben'

describe "bbb-ruby" do
  describe "Big Blue Button Meeting" do
    
    before(:each) do
      @api = Bbb::Api.new(BBB_URL, BBB_SECURITY_SALT)
    end
    
    it 'should create a meeting' do
      @api.create_meeting( MEETING_ID, 
                          MEETING_NAME, 
                          MODERATOR_PASSWORD, 
                          ATTENDEE_PASSWORD, 
                          'Test Meeting', 
                          '999999', 
                          'bla', 100).should_not == false
    end
    
    it 'should give us a moderator url' do
      @api.moderator_url(MEETING_ID, MODERATOR_NAME, MODERATOR_PASSWORD).should_not == false
    end
    
    it 'should give us a attendee url' do
      @api.attendee_url(MEETING_ID, ATTENDEE_NAME, ATTENDEE_PASSWORD).should_not == false
    end
    
    it 'should not be a running meeting' do
      @api.is_meeting_running(MEETING_ID).should == false # because nobody entered it
    end
    
  end
end