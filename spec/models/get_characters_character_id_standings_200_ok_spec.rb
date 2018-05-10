=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.8.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for EsiRuby::GetCharactersCharacterIdStandings200Ok
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GetCharactersCharacterIdStandings200Ok' do
  before do
    # run before each test
    @instance = EsiRuby::GetCharactersCharacterIdStandings200Ok.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GetCharactersCharacterIdStandings200Ok' do
    it 'should create an instance of GetCharactersCharacterIdStandings200Ok' do
      expect(@instance).to be_instance_of(EsiRuby::GetCharactersCharacterIdStandings200Ok)
    end
  end
  describe 'test attribute "from_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "from_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["agent", "npc_corp", "faction"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.from_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "standing"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
