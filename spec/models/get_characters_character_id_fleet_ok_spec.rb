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

# Unit tests for EsiRuby::GetCharactersCharacterIdFleetOk
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GetCharactersCharacterIdFleetOk' do
  before do
    # run before each test
    @instance = EsiRuby::GetCharactersCharacterIdFleetOk.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GetCharactersCharacterIdFleetOk' do
    it 'should create an instance of GetCharactersCharacterIdFleetOk' do
      expect(@instance).to be_instance_of(EsiRuby::GetCharactersCharacterIdFleetOk)
    end
  end
  describe 'test attribute "fleet_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "role"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["fleet_commander", "squad_commander", "squad_member", "wing_commander"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.role = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "squad_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "wing_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
