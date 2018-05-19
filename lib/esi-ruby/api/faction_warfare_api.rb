=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.8.2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'uri'

module Esi
  class FactionWarfareApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Overview of a character involved in faction warfare
    # Statistical overview of a character involved in faction warfare  --- Alternate route: `/dev/characters/{character_id}/fw/stats/`  Alternate route: `/legacy/characters/{character_id}/fw/stats/`  Alternate route: `/v1/characters/{character_id}/fw/stats/`  --- This route expires daily at 11:05
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [GetCharactersCharacterIdFwStatsOk]
    def get_characters_character_id_fw_stats(character_id, opts = {})
      data, _status_code, _headers = get_characters_character_id_fw_stats_with_http_info(character_id, opts)
      data
    end

    # Overview of a character involved in faction warfare
    # Statistical overview of a character involved in faction warfare  --- Alternate route: &#x60;/dev/characters/{character_id}/fw/stats/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/fw/stats/&#x60;  Alternate route: &#x60;/v1/characters/{character_id}/fw/stats/&#x60;  --- This route expires daily at 11:05
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(GetCharactersCharacterIdFwStatsOk, Fixnum, Hash)>] GetCharactersCharacterIdFwStatsOk data, response status code and response headers
    def get_characters_character_id_fw_stats_with_http_info(character_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FactionWarfareApi.get_characters_character_id_fw_stats ...'
      end
      # verify the required parameter 'character_id' is set
      if @api_client.config.client_side_validation && character_id.nil?
        fail ArgumentError, "Missing the required parameter 'character_id' when calling FactionWarfareApi.get_characters_character_id_fw_stats"
      end
      if @api_client.config.client_side_validation && character_id < 1
        fail ArgumentError, 'invalid value for "character_id" when calling FactionWarfareApi.get_characters_character_id_fw_stats, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = '/characters/{character_id}/fw/stats/'.sub('{' + 'character_id' + '}', character_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'token'] = opts[:'token'] if !opts[:'token'].nil?
      query_params[:'user_agent'] = opts[:'user_agent'] if !opts[:'user_agent'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'If-None-Match'] = opts[:'if_none_match'] if !opts[:'if_none_match'].nil?
      header_params[:'X-User-Agent'] = opts[:'x_user_agent'] if !opts[:'x_user_agent'].nil?

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
        :return_type => 'GetCharactersCharacterIdFwStatsOk')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FactionWarfareApi#get_characters_character_id_fw_stats\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Overview of a corporation involved in faction warfare
    # Statistics about a corporation involved in faction warfare  --- Alternate route: `/dev/corporations/{corporation_id}/fw/stats/`  Alternate route: `/legacy/corporations/{corporation_id}/fw/stats/`  Alternate route: `/v1/corporations/{corporation_id}/fw/stats/`  --- This route expires daily at 11:05
    # @param corporation_id An EVE corporation ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [GetCorporationsCorporationIdFwStatsOk]
    def get_corporations_corporation_id_fw_stats(corporation_id, opts = {})
      data, _status_code, _headers = get_corporations_corporation_id_fw_stats_with_http_info(corporation_id, opts)
      data
    end

    # Overview of a corporation involved in faction warfare
    # Statistics about a corporation involved in faction warfare  --- Alternate route: &#x60;/dev/corporations/{corporation_id}/fw/stats/&#x60;  Alternate route: &#x60;/legacy/corporations/{corporation_id}/fw/stats/&#x60;  Alternate route: &#x60;/v1/corporations/{corporation_id}/fw/stats/&#x60;  --- This route expires daily at 11:05
    # @param corporation_id An EVE corporation ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(GetCorporationsCorporationIdFwStatsOk, Fixnum, Hash)>] GetCorporationsCorporationIdFwStatsOk data, response status code and response headers
    def get_corporations_corporation_id_fw_stats_with_http_info(corporation_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FactionWarfareApi.get_corporations_corporation_id_fw_stats ...'
      end
      # verify the required parameter 'corporation_id' is set
      if @api_client.config.client_side_validation && corporation_id.nil?
        fail ArgumentError, "Missing the required parameter 'corporation_id' when calling FactionWarfareApi.get_corporations_corporation_id_fw_stats"
      end
      if @api_client.config.client_side_validation && corporation_id < 1
        fail ArgumentError, 'invalid value for "corporation_id" when calling FactionWarfareApi.get_corporations_corporation_id_fw_stats, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = '/corporations/{corporation_id}/fw/stats/'.sub('{' + 'corporation_id' + '}', corporation_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'token'] = opts[:'token'] if !opts[:'token'].nil?
      query_params[:'user_agent'] = opts[:'user_agent'] if !opts[:'user_agent'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'If-None-Match'] = opts[:'if_none_match'] if !opts[:'if_none_match'].nil?
      header_params[:'X-User-Agent'] = opts[:'x_user_agent'] if !opts[:'x_user_agent'].nil?

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
        :return_type => 'GetCorporationsCorporationIdFwStatsOk')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FactionWarfareApi#get_corporations_corporation_id_fw_stats\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List of the top factions in faction warfare
    # Top 4 leaderboard of factions for kills and victory points separated by total, last week and yesterday.  --- Alternate route: `/dev/fw/leaderboards/`  Alternate route: `/legacy/fw/leaderboards/`  Alternate route: `/v1/fw/leaderboards/`  --- This route expires daily at 11:05
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [GetFwLeaderboardsOk]
    def get_fw_leaderboards(opts = {})
      data, _status_code, _headers = get_fw_leaderboards_with_http_info(opts)
      data
    end

    # List of the top factions in faction warfare
    # Top 4 leaderboard of factions for kills and victory points separated by total, last week and yesterday.  --- Alternate route: &#x60;/dev/fw/leaderboards/&#x60;  Alternate route: &#x60;/legacy/fw/leaderboards/&#x60;  Alternate route: &#x60;/v1/fw/leaderboards/&#x60;  --- This route expires daily at 11:05
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(GetFwLeaderboardsOk, Fixnum, Hash)>] GetFwLeaderboardsOk data, response status code and response headers
    def get_fw_leaderboards_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FactionWarfareApi.get_fw_leaderboards ...'
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = '/fw/leaderboards/'

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'user_agent'] = opts[:'user_agent'] if !opts[:'user_agent'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'If-None-Match'] = opts[:'if_none_match'] if !opts[:'if_none_match'].nil?
      header_params[:'X-User-Agent'] = opts[:'x_user_agent'] if !opts[:'x_user_agent'].nil?

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
        :return_type => 'GetFwLeaderboardsOk')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FactionWarfareApi#get_fw_leaderboards\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List of the top pilots in faction warfare
    # Top 100 leaderboard of pilots for kills and victory points separated by total, last week and yesterday.  --- Alternate route: `/dev/fw/leaderboards/characters/`  Alternate route: `/legacy/fw/leaderboards/characters/`  Alternate route: `/v1/fw/leaderboards/characters/`  --- This route expires daily at 11:05
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [GetFwLeaderboardsCharactersOk]
    def get_fw_leaderboards_characters(opts = {})
      data, _status_code, _headers = get_fw_leaderboards_characters_with_http_info(opts)
      data
    end

    # List of the top pilots in faction warfare
    # Top 100 leaderboard of pilots for kills and victory points separated by total, last week and yesterday.  --- Alternate route: &#x60;/dev/fw/leaderboards/characters/&#x60;  Alternate route: &#x60;/legacy/fw/leaderboards/characters/&#x60;  Alternate route: &#x60;/v1/fw/leaderboards/characters/&#x60;  --- This route expires daily at 11:05
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(GetFwLeaderboardsCharactersOk, Fixnum, Hash)>] GetFwLeaderboardsCharactersOk data, response status code and response headers
    def get_fw_leaderboards_characters_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FactionWarfareApi.get_fw_leaderboards_characters ...'
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = '/fw/leaderboards/characters/'

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'user_agent'] = opts[:'user_agent'] if !opts[:'user_agent'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'If-None-Match'] = opts[:'if_none_match'] if !opts[:'if_none_match'].nil?
      header_params[:'X-User-Agent'] = opts[:'x_user_agent'] if !opts[:'x_user_agent'].nil?

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
        :return_type => 'GetFwLeaderboardsCharactersOk')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FactionWarfareApi#get_fw_leaderboards_characters\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List of the top corporations in faction warfare
    # Top 10 leaderboard of corporations for kills and victory points separated by total, last week and yesterday.  --- Alternate route: `/dev/fw/leaderboards/corporations/`  Alternate route: `/legacy/fw/leaderboards/corporations/`  Alternate route: `/v1/fw/leaderboards/corporations/`  --- This route expires daily at 11:05
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [GetFwLeaderboardsCorporationsOk]
    def get_fw_leaderboards_corporations(opts = {})
      data, _status_code, _headers = get_fw_leaderboards_corporations_with_http_info(opts)
      data
    end

    # List of the top corporations in faction warfare
    # Top 10 leaderboard of corporations for kills and victory points separated by total, last week and yesterday.  --- Alternate route: &#x60;/dev/fw/leaderboards/corporations/&#x60;  Alternate route: &#x60;/legacy/fw/leaderboards/corporations/&#x60;  Alternate route: &#x60;/v1/fw/leaderboards/corporations/&#x60;  --- This route expires daily at 11:05
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(GetFwLeaderboardsCorporationsOk, Fixnum, Hash)>] GetFwLeaderboardsCorporationsOk data, response status code and response headers
    def get_fw_leaderboards_corporations_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FactionWarfareApi.get_fw_leaderboards_corporations ...'
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = '/fw/leaderboards/corporations/'

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'user_agent'] = opts[:'user_agent'] if !opts[:'user_agent'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'If-None-Match'] = opts[:'if_none_match'] if !opts[:'if_none_match'].nil?
      header_params[:'X-User-Agent'] = opts[:'x_user_agent'] if !opts[:'x_user_agent'].nil?

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
        :return_type => 'GetFwLeaderboardsCorporationsOk')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FactionWarfareApi#get_fw_leaderboards_corporations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # An overview of statistics about factions involved in faction warfare
    # Statistical overviews of factions involved in faction warfare  --- Alternate route: `/dev/fw/stats/`  Alternate route: `/legacy/fw/stats/`  Alternate route: `/v1/fw/stats/`  --- This route expires daily at 11:05
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<GetFwStats200Ok>]
    def get_fw_stats(opts = {})
      data, _status_code, _headers = get_fw_stats_with_http_info(opts)
      data
    end

    # An overview of statistics about factions involved in faction warfare
    # Statistical overviews of factions involved in faction warfare  --- Alternate route: &#x60;/dev/fw/stats/&#x60;  Alternate route: &#x60;/legacy/fw/stats/&#x60;  Alternate route: &#x60;/v1/fw/stats/&#x60;  --- This route expires daily at 11:05
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(Array<GetFwStats200Ok>, Fixnum, Hash)>] Array<GetFwStats200Ok> data, response status code and response headers
    def get_fw_stats_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FactionWarfareApi.get_fw_stats ...'
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = '/fw/stats/'

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'user_agent'] = opts[:'user_agent'] if !opts[:'user_agent'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'If-None-Match'] = opts[:'if_none_match'] if !opts[:'if_none_match'].nil?
      header_params[:'X-User-Agent'] = opts[:'x_user_agent'] if !opts[:'x_user_agent'].nil?

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
        :return_type => 'Array<GetFwStats200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FactionWarfareApi#get_fw_stats\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Ownership of faction warfare systems
    # An overview of the current ownership of faction warfare solar systems  --- Alternate route: `/legacy/fw/systems/`  Alternate route: `/v1/fw/systems/`  --- This route is cached for up to 1800 seconds  --- Warning: This route has an upgrade available.  --- [Diff of the upcoming changes](https://esi.evetech.net/diff/latest/dev/#GET-/fw/systems/)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<GetFwSystems200Ok>]
    def get_fw_systems(opts = {})
      data, _status_code, _headers = get_fw_systems_with_http_info(opts)
      data
    end

    # Ownership of faction warfare systems
    # An overview of the current ownership of faction warfare solar systems  --- Alternate route: &#x60;/legacy/fw/systems/&#x60;  Alternate route: &#x60;/v1/fw/systems/&#x60;  --- This route is cached for up to 1800 seconds  --- Warning: This route has an upgrade available.  --- [Diff of the upcoming changes](https://esi.evetech.net/diff/latest/dev/#GET-/fw/systems/)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(Array<GetFwSystems200Ok>, Fixnum, Hash)>] Array<GetFwSystems200Ok> data, response status code and response headers
    def get_fw_systems_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FactionWarfareApi.get_fw_systems ...'
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = '/fw/systems/'

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'user_agent'] = opts[:'user_agent'] if !opts[:'user_agent'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'If-None-Match'] = opts[:'if_none_match'] if !opts[:'if_none_match'].nil?
      header_params[:'X-User-Agent'] = opts[:'x_user_agent'] if !opts[:'x_user_agent'].nil?

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
        :return_type => 'Array<GetFwSystems200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FactionWarfareApi#get_fw_systems\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Data about which NPC factions are at war
    # Data about which NPC factions are at war  --- Alternate route: `/dev/fw/wars/`  Alternate route: `/legacy/fw/wars/`  Alternate route: `/v1/fw/wars/`  --- This route expires daily at 11:05
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<GetFwWars200Ok>]
    def get_fw_wars(opts = {})
      data, _status_code, _headers = get_fw_wars_with_http_info(opts)
      data
    end

    # Data about which NPC factions are at war
    # Data about which NPC factions are at war  --- Alternate route: &#x60;/dev/fw/wars/&#x60;  Alternate route: &#x60;/legacy/fw/wars/&#x60;  Alternate route: &#x60;/v1/fw/wars/&#x60;  --- This route expires daily at 11:05
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(Array<GetFwWars200Ok>, Fixnum, Hash)>] Array<GetFwWars200Ok> data, response status code and response headers
    def get_fw_wars_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FactionWarfareApi.get_fw_wars ...'
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = '/fw/wars/'

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'user_agent'] = opts[:'user_agent'] if !opts[:'user_agent'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'If-None-Match'] = opts[:'if_none_match'] if !opts[:'if_none_match'].nil?
      header_params[:'X-User-Agent'] = opts[:'x_user_agent'] if !opts[:'x_user_agent'].nil?

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
        :return_type => 'Array<GetFwWars200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FactionWarfareApi#get_fw_wars\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
