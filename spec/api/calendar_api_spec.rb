=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.8.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for EsiRuby::CalendarApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CalendarApi' do
  before do
    # run before each test
    @instance = EsiRuby::CalendarApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CalendarApi' do
    it 'should create an instance of CalendarApi' do
      expect(@instance).to be_instance_of(EsiRuby::CalendarApi)
    end
  end

  # unit tests for get_characters_character_id_calendar
  # List calendar event summaries
  # Get 50 event summaries from the calendar. If no from_event ID is given, the resource will return the next 50 chronological event summaries from now. If a from_event ID is specified, it will return the next 50 chronological event summaries from after that event.  --- Alternate route: &#x60;/dev/characters/{character_id}/calendar/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/calendar/&#x60;  Alternate route: &#x60;/v1/characters/{character_id}/calendar/&#x60;  --- This route is cached for up to 5 seconds
  # @param character_id An EVE character ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [Integer] :from_event The event ID to retrieve events from
  # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
  # @option opts [String] :token Access token to use if unable to set a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [Array<GetCharactersCharacterIdCalendar200Ok>]
  describe 'get_characters_character_id_calendar test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_characters_character_id_calendar_event_id
  # Get an event
  # Get all the information for a specific event  --- Alternate route: &#x60;/dev/characters/{character_id}/calendar/{event_id}/&#x60;  Alternate route: &#x60;/v3/characters/{character_id}/calendar/{event_id}/&#x60;  --- This route is cached for up to 5 seconds
  # @param character_id An EVE character ID
  # @param event_id The id of the event requested
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
  # @option opts [String] :token Access token to use if unable to set a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [GetCharactersCharacterIdCalendarEventIdOk]
  describe 'get_characters_character_id_calendar_event_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_characters_character_id_calendar_event_id_attendees
  # Get attendees
  # Get all invited attendees for a given event  --- Alternate route: &#x60;/dev/characters/{character_id}/calendar/{event_id}/attendees/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/calendar/{event_id}/attendees/&#x60;  Alternate route: &#x60;/v1/characters/{character_id}/calendar/{event_id}/attendees/&#x60;  --- This route is cached for up to 600 seconds
  # @param character_id An EVE character ID
  # @param event_id The id of the event requested
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
  # @option opts [String] :token Access token to use if unable to set a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [Array<GetCharactersCharacterIdCalendarEventIdAttendees200Ok>]
  describe 'get_characters_character_id_calendar_event_id_attendees test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for put_characters_character_id_calendar_event_id
  # Respond to an event
  # Set your response status to an event  --- Alternate route: &#x60;/dev/characters/{character_id}/calendar/{event_id}/&#x60;  Alternate route: &#x60;/v3/characters/{character_id}/calendar/{event_id}/&#x60; 
  # @param character_id An EVE character ID
  # @param event_id The ID of the event requested
  # @param response The response value to set, overriding current value.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :token Access token to use if unable to set a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [nil]
  describe 'put_characters_character_id_calendar_event_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
