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

# Unit tests for EsiRuby::GetCharactersCharacterIdContacts200Ok
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GetCharactersCharacterIdContacts200Ok' do
  before do
    # run before each test
    @instance = EsiRuby::GetCharactersCharacterIdContacts200Ok.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GetCharactersCharacterIdContacts200Ok' do
    it 'should create an instance of GetCharactersCharacterIdContacts200Ok' do
      expect(@instance).to be_instance_of(EsiRuby::GetCharactersCharacterIdContacts200Ok)
    end
  end
  describe 'test attribute "contact_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "contact_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["character", "corporation", "alliance", "faction"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.contact_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "is_blocked"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "is_watched"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "label_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "standing"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
