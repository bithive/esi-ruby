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

# Unit tests for EsiRuby::GetFwLeaderboardsCorporationsVictoryPoints
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GetFwLeaderboardsCorporationsVictoryPoints' do
  before do
    # run before each test
    @instance = EsiRuby::GetFwLeaderboardsCorporationsVictoryPoints.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GetFwLeaderboardsCorporationsVictoryPoints' do
    it 'should create an instance of GetFwLeaderboardsCorporationsVictoryPoints' do
      expect(@instance).to be_instance_of(EsiRuby::GetFwLeaderboardsCorporationsVictoryPoints)
    end
  end
  describe 'test attribute "active_total"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "last_week"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "yesterday"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
