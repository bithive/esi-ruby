=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.8.2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Esi::GetFwLeaderboardsCorporationsActiveTotalActiveTotal
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GetFwLeaderboardsCorporationsActiveTotalActiveTotal' do
  before do
    # run before each test
    @instance = Esi::GetFwLeaderboardsCorporationsActiveTotalActiveTotal.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GetFwLeaderboardsCorporationsActiveTotalActiveTotal' do
    it 'should create an instance of GetFwLeaderboardsCorporationsActiveTotalActiveTotal' do
      expect(@instance).to be_instance_of(Esi::GetFwLeaderboardsCorporationsActiveTotalActiveTotal)
    end
  end
  describe 'test attribute "amount"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "corporation_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
