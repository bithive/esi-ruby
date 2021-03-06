=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.8.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for EsiRuby::SearchApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SearchApi' do
  before do
    # run before each test
    @instance = EsiRuby::SearchApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SearchApi' do
    it 'should create an instance of SearchApi' do
      expect(@instance).to be_instance_of(EsiRuby::SearchApi)
    end
  end

  # unit tests for get_characters_character_id_search
  # Search on a string
  # Search for entities that match a given sub-string.  --- Alternate route: &#x60;/dev/characters/{character_id}/search/&#x60;  Alternate route: &#x60;/v3/characters/{character_id}/search/&#x60;  --- This route is cached for up to 3600 seconds
  # @param categories Type of entities to search for
  # @param character_id An EVE character ID
  # @param search The string to search on
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
  # @option opts [String] :language Language to use in the response
  # @option opts [BOOLEAN] :strict Whether the search should be a strict match
  # @option opts [String] :token Access token to use if unable to set a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [GetCharactersCharacterIdSearchOk]
  describe 'get_characters_character_id_search test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_search
  # Search on a string
  # Search for entities that match a given sub-string.  --- Alternate route: &#x60;/dev/search/&#x60;  Alternate route: &#x60;/v2/search/&#x60;  --- This route is cached for up to 3600 seconds
  # @param categories Type of entities to search for
  # @param search The string to search on
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
  # @option opts [String] :language Language to use in the response
  # @option opts [BOOLEAN] :strict Whether the search should be a strict match
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [GetSearchOk]
  describe 'get_search test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
