=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.8.2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'uri'

module Esi
  class IndustryApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List character industry jobs
    # List industry jobs placed by a character  --- Alternate route: `/dev/characters/{character_id}/industry/jobs/`  Alternate route: `/legacy/characters/{character_id}/industry/jobs/`  Alternate route: `/v1/characters/{character_id}/industry/jobs/`  --- This route is cached for up to 300 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [BOOLEAN] :include_completed Whether retrieve completed character industry jobs as well
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<GetCharactersCharacterIdIndustryJobs200Ok>]
    def get_characters_character_id_industry_jobs(character_id, opts = {})
      data, _status_code, _headers = get_characters_character_id_industry_jobs_with_http_info(character_id, opts)
      data
    end

    # List character industry jobs
    # List industry jobs placed by a character  --- Alternate route: &#x60;/dev/characters/{character_id}/industry/jobs/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/industry/jobs/&#x60;  Alternate route: &#x60;/v1/characters/{character_id}/industry/jobs/&#x60;  --- This route is cached for up to 300 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [BOOLEAN] :include_completed Whether retrieve completed character industry jobs as well
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<(Array<GetCharactersCharacterIdIndustryJobs200Ok>, Fixnum, Hash)>] Array<GetCharactersCharacterIdIndustryJobs200Ok> data, response status code and response headers
    def get_characters_character_id_industry_jobs_with_http_info(character_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IndustryApi.get_characters_character_id_industry_jobs ...'
      end
      # verify the required parameter 'character_id' is set
      if @api_client.config.client_side_validation && character_id.nil?
        fail ArgumentError, "Missing the required parameter 'character_id' when calling IndustryApi.get_characters_character_id_industry_jobs"
      end
      if @api_client.config.client_side_validation && character_id < 1
        fail ArgumentError, 'invalid value for "character_id" when calling IndustryApi.get_characters_character_id_industry_jobs, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = '/characters/{character_id}/industry/jobs/'.sub('{' + 'character_id' + '}', character_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'include_completed'] = opts[:'include_completed'] if !opts[:'include_completed'].nil?
      query_params[:'token'] = opts[:'token'] if !opts[:'token'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'If-None-Match'] = opts[:'if_none_match'] if !opts[:'if_none_match'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['evesso']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<GetCharactersCharacterIdIndustryJobs200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IndustryApi#get_characters_character_id_industry_jobs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Character mining ledger
    # Paginated record of all mining done by a character for the past 30 days   --- Alternate route: `/dev/characters/{character_id}/mining/`  Alternate route: `/legacy/characters/{character_id}/mining/`  Alternate route: `/v1/characters/{character_id}/mining/`  --- This route is cached for up to 600 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [Integer] :page Which page of results to return (default to 1)
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<GetCharactersCharacterIdMining200Ok>]
    def get_characters_character_id_mining(character_id, opts = {})
      data, _status_code, _headers = get_characters_character_id_mining_with_http_info(character_id, opts)
      data
    end

    # Character mining ledger
    # Paginated record of all mining done by a character for the past 30 days   --- Alternate route: &#x60;/dev/characters/{character_id}/mining/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/mining/&#x60;  Alternate route: &#x60;/v1/characters/{character_id}/mining/&#x60;  --- This route is cached for up to 600 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [Integer] :page Which page of results to return
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<(Array<GetCharactersCharacterIdMining200Ok>, Fixnum, Hash)>] Array<GetCharactersCharacterIdMining200Ok> data, response status code and response headers
    def get_characters_character_id_mining_with_http_info(character_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IndustryApi.get_characters_character_id_mining ...'
      end
      # verify the required parameter 'character_id' is set
      if @api_client.config.client_side_validation && character_id.nil?
        fail ArgumentError, "Missing the required parameter 'character_id' when calling IndustryApi.get_characters_character_id_mining"
      end
      if @api_client.config.client_side_validation && character_id < 1
        fail ArgumentError, 'invalid value for "character_id" when calling IndustryApi.get_characters_character_id_mining, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling IndustryApi.get_characters_character_id_mining, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/characters/{character_id}/mining/'.sub('{' + 'character_id' + '}', character_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'token'] = opts[:'token'] if !opts[:'token'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'If-None-Match'] = opts[:'if_none_match'] if !opts[:'if_none_match'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['evesso']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<GetCharactersCharacterIdMining200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IndustryApi#get_characters_character_id_mining\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Moon extraction timers
    # Extraction timers for all moon chunks being extracted by refineries belonging to a corporation.   --- Alternate route: `/dev/corporation/{corporation_id}/mining/extractions/`  Alternate route: `/legacy/corporation/{corporation_id}/mining/extractions/`  Alternate route: `/v1/corporation/{corporation_id}/mining/extractions/`  --- This route is cached for up to 1800 seconds  --- Requires one of the following EVE corporation role(s): Structure_manager 
    # @param corporation_id An EVE corporation ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [Integer] :page Which page of results to return (default to 1)
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<GetCorporationCorporationIdMiningExtractions200Ok>]
    def get_corporation_corporation_id_mining_extractions(corporation_id, opts = {})
      data, _status_code, _headers = get_corporation_corporation_id_mining_extractions_with_http_info(corporation_id, opts)
      data
    end

    # Moon extraction timers
    # Extraction timers for all moon chunks being extracted by refineries belonging to a corporation.   --- Alternate route: &#x60;/dev/corporation/{corporation_id}/mining/extractions/&#x60;  Alternate route: &#x60;/legacy/corporation/{corporation_id}/mining/extractions/&#x60;  Alternate route: &#x60;/v1/corporation/{corporation_id}/mining/extractions/&#x60;  --- This route is cached for up to 1800 seconds  --- Requires one of the following EVE corporation role(s): Structure_manager 
    # @param corporation_id An EVE corporation ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [Integer] :page Which page of results to return
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<(Array<GetCorporationCorporationIdMiningExtractions200Ok>, Fixnum, Hash)>] Array<GetCorporationCorporationIdMiningExtractions200Ok> data, response status code and response headers
    def get_corporation_corporation_id_mining_extractions_with_http_info(corporation_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IndustryApi.get_corporation_corporation_id_mining_extractions ...'
      end
      # verify the required parameter 'corporation_id' is set
      if @api_client.config.client_side_validation && corporation_id.nil?
        fail ArgumentError, "Missing the required parameter 'corporation_id' when calling IndustryApi.get_corporation_corporation_id_mining_extractions"
      end
      if @api_client.config.client_side_validation && corporation_id < 1
        fail ArgumentError, 'invalid value for "corporation_id" when calling IndustryApi.get_corporation_corporation_id_mining_extractions, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling IndustryApi.get_corporation_corporation_id_mining_extractions, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/corporation/{corporation_id}/mining/extractions/'.sub('{' + 'corporation_id' + '}', corporation_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'token'] = opts[:'token'] if !opts[:'token'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'If-None-Match'] = opts[:'if_none_match'] if !opts[:'if_none_match'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['evesso']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<GetCorporationCorporationIdMiningExtractions200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IndustryApi#get_corporation_corporation_id_mining_extractions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Corporation mining observers
    # Paginated list of all entities capable of observing and recording mining for a corporation   --- Alternate route: `/dev/corporation/{corporation_id}/mining/observers/`  Alternate route: `/legacy/corporation/{corporation_id}/mining/observers/`  Alternate route: `/v1/corporation/{corporation_id}/mining/observers/`  --- This route is cached for up to 3600 seconds  --- Requires one of the following EVE corporation role(s): Accountant 
    # @param corporation_id An EVE corporation ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [Integer] :page Which page of results to return (default to 1)
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<GetCorporationCorporationIdMiningObservers200Ok>]
    def get_corporation_corporation_id_mining_observers(corporation_id, opts = {})
      data, _status_code, _headers = get_corporation_corporation_id_mining_observers_with_http_info(corporation_id, opts)
      data
    end

    # Corporation mining observers
    # Paginated list of all entities capable of observing and recording mining for a corporation   --- Alternate route: &#x60;/dev/corporation/{corporation_id}/mining/observers/&#x60;  Alternate route: &#x60;/legacy/corporation/{corporation_id}/mining/observers/&#x60;  Alternate route: &#x60;/v1/corporation/{corporation_id}/mining/observers/&#x60;  --- This route is cached for up to 3600 seconds  --- Requires one of the following EVE corporation role(s): Accountant 
    # @param corporation_id An EVE corporation ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [Integer] :page Which page of results to return
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<(Array<GetCorporationCorporationIdMiningObservers200Ok>, Fixnum, Hash)>] Array<GetCorporationCorporationIdMiningObservers200Ok> data, response status code and response headers
    def get_corporation_corporation_id_mining_observers_with_http_info(corporation_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IndustryApi.get_corporation_corporation_id_mining_observers ...'
      end
      # verify the required parameter 'corporation_id' is set
      if @api_client.config.client_side_validation && corporation_id.nil?
        fail ArgumentError, "Missing the required parameter 'corporation_id' when calling IndustryApi.get_corporation_corporation_id_mining_observers"
      end
      if @api_client.config.client_side_validation && corporation_id < 1
        fail ArgumentError, 'invalid value for "corporation_id" when calling IndustryApi.get_corporation_corporation_id_mining_observers, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling IndustryApi.get_corporation_corporation_id_mining_observers, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/corporation/{corporation_id}/mining/observers/'.sub('{' + 'corporation_id' + '}', corporation_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'token'] = opts[:'token'] if !opts[:'token'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'If-None-Match'] = opts[:'if_none_match'] if !opts[:'if_none_match'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['evesso']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<GetCorporationCorporationIdMiningObservers200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IndustryApi#get_corporation_corporation_id_mining_observers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Observed corporation mining
    # Paginated record of all mining seen by an observer   --- Alternate route: `/dev/corporation/{corporation_id}/mining/observers/{observer_id}/`  Alternate route: `/legacy/corporation/{corporation_id}/mining/observers/{observer_id}/`  Alternate route: `/v1/corporation/{corporation_id}/mining/observers/{observer_id}/`  --- This route is cached for up to 3600 seconds  --- Requires one of the following EVE corporation role(s): Accountant 
    # @param corporation_id An EVE corporation ID
    # @param observer_id A mining observer id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [Integer] :page Which page of results to return (default to 1)
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<GetCorporationCorporationIdMiningObserversObserverId200Ok>]
    def get_corporation_corporation_id_mining_observers_observer_id(corporation_id, observer_id, opts = {})
      data, _status_code, _headers = get_corporation_corporation_id_mining_observers_observer_id_with_http_info(corporation_id, observer_id, opts)
      data
    end

    # Observed corporation mining
    # Paginated record of all mining seen by an observer   --- Alternate route: &#x60;/dev/corporation/{corporation_id}/mining/observers/{observer_id}/&#x60;  Alternate route: &#x60;/legacy/corporation/{corporation_id}/mining/observers/{observer_id}/&#x60;  Alternate route: &#x60;/v1/corporation/{corporation_id}/mining/observers/{observer_id}/&#x60;  --- This route is cached for up to 3600 seconds  --- Requires one of the following EVE corporation role(s): Accountant 
    # @param corporation_id An EVE corporation ID
    # @param observer_id A mining observer id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [Integer] :page Which page of results to return
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<(Array<GetCorporationCorporationIdMiningObserversObserverId200Ok>, Fixnum, Hash)>] Array<GetCorporationCorporationIdMiningObserversObserverId200Ok> data, response status code and response headers
    def get_corporation_corporation_id_mining_observers_observer_id_with_http_info(corporation_id, observer_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IndustryApi.get_corporation_corporation_id_mining_observers_observer_id ...'
      end
      # verify the required parameter 'corporation_id' is set
      if @api_client.config.client_side_validation && corporation_id.nil?
        fail ArgumentError, "Missing the required parameter 'corporation_id' when calling IndustryApi.get_corporation_corporation_id_mining_observers_observer_id"
      end
      if @api_client.config.client_side_validation && corporation_id < 1
        fail ArgumentError, 'invalid value for "corporation_id" when calling IndustryApi.get_corporation_corporation_id_mining_observers_observer_id, must be greater than or equal to 1.'
      end

      # verify the required parameter 'observer_id' is set
      if @api_client.config.client_side_validation && observer_id.nil?
        fail ArgumentError, "Missing the required parameter 'observer_id' when calling IndustryApi.get_corporation_corporation_id_mining_observers_observer_id"
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling IndustryApi.get_corporation_corporation_id_mining_observers_observer_id, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/corporation/{corporation_id}/mining/observers/{observer_id}/'.sub('{' + 'corporation_id' + '}', corporation_id.to_s).sub('{' + 'observer_id' + '}', observer_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'token'] = opts[:'token'] if !opts[:'token'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'If-None-Match'] = opts[:'if_none_match'] if !opts[:'if_none_match'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['evesso']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<GetCorporationCorporationIdMiningObserversObserverId200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IndustryApi#get_corporation_corporation_id_mining_observers_observer_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List corporation industry jobs
    # List industry jobs run by a corporation  --- Alternate route: `/dev/corporations/{corporation_id}/industry/jobs/`  Alternate route: `/legacy/corporations/{corporation_id}/industry/jobs/`  Alternate route: `/v1/corporations/{corporation_id}/industry/jobs/`  --- This route is cached for up to 300 seconds  --- Requires one of the following EVE corporation role(s): FactoryManager 
    # @param corporation_id An EVE corporation ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [BOOLEAN] :include_completed Whether retrieve completed industry jobs as well (default to false)
    # @option opts [Integer] :page Which page of results to return (default to 1)
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<GetCorporationsCorporationIdIndustryJobs200Ok>]
    def get_corporations_corporation_id_industry_jobs(corporation_id, opts = {})
      data, _status_code, _headers = get_corporations_corporation_id_industry_jobs_with_http_info(corporation_id, opts)
      data
    end

    # List corporation industry jobs
    # List industry jobs run by a corporation  --- Alternate route: &#x60;/dev/corporations/{corporation_id}/industry/jobs/&#x60;  Alternate route: &#x60;/legacy/corporations/{corporation_id}/industry/jobs/&#x60;  Alternate route: &#x60;/v1/corporations/{corporation_id}/industry/jobs/&#x60;  --- This route is cached for up to 300 seconds  --- Requires one of the following EVE corporation role(s): FactoryManager 
    # @param corporation_id An EVE corporation ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [BOOLEAN] :include_completed Whether retrieve completed industry jobs as well
    # @option opts [Integer] :page Which page of results to return
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<(Array<GetCorporationsCorporationIdIndustryJobs200Ok>, Fixnum, Hash)>] Array<GetCorporationsCorporationIdIndustryJobs200Ok> data, response status code and response headers
    def get_corporations_corporation_id_industry_jobs_with_http_info(corporation_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IndustryApi.get_corporations_corporation_id_industry_jobs ...'
      end
      # verify the required parameter 'corporation_id' is set
      if @api_client.config.client_side_validation && corporation_id.nil?
        fail ArgumentError, "Missing the required parameter 'corporation_id' when calling IndustryApi.get_corporations_corporation_id_industry_jobs"
      end
      if @api_client.config.client_side_validation && corporation_id < 1
        fail ArgumentError, 'invalid value for "corporation_id" when calling IndustryApi.get_corporations_corporation_id_industry_jobs, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling IndustryApi.get_corporations_corporation_id_industry_jobs, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/corporations/{corporation_id}/industry/jobs/'.sub('{' + 'corporation_id' + '}', corporation_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'include_completed'] = opts[:'include_completed'] if !opts[:'include_completed'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'token'] = opts[:'token'] if !opts[:'token'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'If-None-Match'] = opts[:'if_none_match'] if !opts[:'if_none_match'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['evesso']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<GetCorporationsCorporationIdIndustryJobs200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IndustryApi#get_corporations_corporation_id_industry_jobs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List industry facilities
    # Return a list of industry facilities  --- Alternate route: `/dev/industry/facilities/`  Alternate route: `/legacy/industry/facilities/`  Alternate route: `/v1/industry/facilities/`  --- This route is cached for up to 3600 seconds
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @return [Array<GetIndustryFacilities200Ok>]
    def get_industry_facilities(opts = {})
      data, _status_code, _headers = get_industry_facilities_with_http_info(opts)
      data
    end

    # List industry facilities
    # Return a list of industry facilities  --- Alternate route: &#x60;/dev/industry/facilities/&#x60;  Alternate route: &#x60;/legacy/industry/facilities/&#x60;  Alternate route: &#x60;/v1/industry/facilities/&#x60;  --- This route is cached for up to 3600 seconds
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @return [Array<(Array<GetIndustryFacilities200Ok>, Fixnum, Hash)>] Array<GetIndustryFacilities200Ok> data, response status code and response headers
    def get_industry_facilities_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IndustryApi.get_industry_facilities ...'
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = '/industry/facilities/'

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'If-None-Match'] = opts[:'if_none_match'] if !opts[:'if_none_match'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<GetIndustryFacilities200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IndustryApi#get_industry_facilities\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List solar system cost indices
    # Return cost indices for solar systems  --- Alternate route: `/dev/industry/systems/`  Alternate route: `/legacy/industry/systems/`  Alternate route: `/v1/industry/systems/`  --- This route is cached for up to 3600 seconds
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @return [Array<GetIndustrySystems200Ok>]
    def get_industry_systems(opts = {})
      data, _status_code, _headers = get_industry_systems_with_http_info(opts)
      data
    end

    # List solar system cost indices
    # Return cost indices for solar systems  --- Alternate route: &#x60;/dev/industry/systems/&#x60;  Alternate route: &#x60;/legacy/industry/systems/&#x60;  Alternate route: &#x60;/v1/industry/systems/&#x60;  --- This route is cached for up to 3600 seconds
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @return [Array<(Array<GetIndustrySystems200Ok>, Fixnum, Hash)>] Array<GetIndustrySystems200Ok> data, response status code and response headers
    def get_industry_systems_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IndustryApi.get_industry_systems ...'
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = '/industry/systems/'

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'If-None-Match'] = opts[:'if_none_match'] if !opts[:'if_none_match'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<GetIndustrySystems200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IndustryApi#get_industry_systems\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
