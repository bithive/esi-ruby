=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.8.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'uri'

module EsiRuby
  class AssetsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get character assets
    # Return a list of the characters assets  --- Alternate route: `/dev/characters/{character_id}/assets/`  Alternate route: `/v3/characters/{character_id}/assets/`  --- This route is cached for up to 3600 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [Integer] :page Which page of results to return (default to 1)
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<GetCharactersCharacterIdAssets200Ok>]
    def get_characters_character_id_assets(character_id, opts = {})
      data, _status_code, _headers = get_characters_character_id_assets_with_http_info(character_id, opts)
      data
    end

    # Get character assets
    # Return a list of the characters assets  --- Alternate route: &#x60;/dev/characters/{character_id}/assets/&#x60;  Alternate route: &#x60;/v3/characters/{character_id}/assets/&#x60;  --- This route is cached for up to 3600 seconds
    # @param character_id An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [Integer] :page Which page of results to return
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(Array<GetCharactersCharacterIdAssets200Ok>, Fixnum, Hash)>] Array<GetCharactersCharacterIdAssets200Ok> data, response status code and response headers
    def get_characters_character_id_assets_with_http_info(character_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssetsApi.get_characters_character_id_assets ...'
      end
      # verify the required parameter 'character_id' is set
      if @api_client.config.client_side_validation && character_id.nil?
        fail ArgumentError, "Missing the required parameter 'character_id' when calling AssetsApi.get_characters_character_id_assets"
      end
      if @api_client.config.client_side_validation && character_id < 1
        fail ArgumentError, 'invalid value for "character_id" when calling AssetsApi.get_characters_character_id_assets, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling AssetsApi.get_characters_character_id_assets, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/characters/{character_id}/assets/'.sub('{' + 'character_id' + '}', character_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
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
        :return_type => 'Array<GetCharactersCharacterIdAssets200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssetsApi#get_characters_character_id_assets\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get corporation assets
    # Return a list of the corporation assets  --- Alternate route: `/dev/corporations/{corporation_id}/assets/`  Alternate route: `/v3/corporations/{corporation_id}/assets/`  --- This route is cached for up to 3600 seconds  --- Requires one of the following EVE corporation role(s): Director 
    # @param corporation_id An EVE corporation ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [Integer] :page Which page of results to return (default to 1)
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<GetCorporationsCorporationIdAssets200Ok>]
    def get_corporations_corporation_id_assets(corporation_id, opts = {})
      data, _status_code, _headers = get_corporations_corporation_id_assets_with_http_info(corporation_id, opts)
      data
    end

    # Get corporation assets
    # Return a list of the corporation assets  --- Alternate route: &#x60;/dev/corporations/{corporation_id}/assets/&#x60;  Alternate route: &#x60;/v3/corporations/{corporation_id}/assets/&#x60;  --- This route is cached for up to 3600 seconds  --- Requires one of the following EVE corporation role(s): Director 
    # @param corporation_id An EVE corporation ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [Integer] :page Which page of results to return
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(Array<GetCorporationsCorporationIdAssets200Ok>, Fixnum, Hash)>] Array<GetCorporationsCorporationIdAssets200Ok> data, response status code and response headers
    def get_corporations_corporation_id_assets_with_http_info(corporation_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssetsApi.get_corporations_corporation_id_assets ...'
      end
      # verify the required parameter 'corporation_id' is set
      if @api_client.config.client_side_validation && corporation_id.nil?
        fail ArgumentError, "Missing the required parameter 'corporation_id' when calling AssetsApi.get_corporations_corporation_id_assets"
      end
      if @api_client.config.client_side_validation && corporation_id < 1
        fail ArgumentError, 'invalid value for "corporation_id" when calling AssetsApi.get_corporations_corporation_id_assets, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling AssetsApi.get_corporations_corporation_id_assets, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/corporations/{corporation_id}/assets/'.sub('{' + 'corporation_id' + '}', corporation_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
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
        :return_type => 'Array<GetCorporationsCorporationIdAssets200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssetsApi#get_corporations_corporation_id_assets\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get character asset locations
    # Return locations for a set of item ids, which you can get from character assets endpoint. Coordinates for items in hangars or stations are set to (0,0,0)  --- Alternate route: `/dev/characters/{character_id}/assets/locations/`  Alternate route: `/v2/characters/{character_id}/assets/locations/` 
    # @param character_id An EVE character ID
    # @param item_ids A list of item ids
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<PostCharactersCharacterIdAssetsLocations200Ok>]
    def post_characters_character_id_assets_locations(character_id, item_ids, opts = {})
      data, _status_code, _headers = post_characters_character_id_assets_locations_with_http_info(character_id, item_ids, opts)
      data
    end

    # Get character asset locations
    # Return locations for a set of item ids, which you can get from character assets endpoint. Coordinates for items in hangars or stations are set to (0,0,0)  --- Alternate route: &#x60;/dev/characters/{character_id}/assets/locations/&#x60;  Alternate route: &#x60;/v2/characters/{character_id}/assets/locations/&#x60; 
    # @param character_id An EVE character ID
    # @param item_ids A list of item ids
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(Array<PostCharactersCharacterIdAssetsLocations200Ok>, Fixnum, Hash)>] Array<PostCharactersCharacterIdAssetsLocations200Ok> data, response status code and response headers
    def post_characters_character_id_assets_locations_with_http_info(character_id, item_ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssetsApi.post_characters_character_id_assets_locations ...'
      end
      # verify the required parameter 'character_id' is set
      if @api_client.config.client_side_validation && character_id.nil?
        fail ArgumentError, "Missing the required parameter 'character_id' when calling AssetsApi.post_characters_character_id_assets_locations"
      end
      if @api_client.config.client_side_validation && character_id < 1
        fail ArgumentError, 'invalid value for "character_id" when calling AssetsApi.post_characters_character_id_assets_locations, must be greater than or equal to 1.'
      end

      # verify the required parameter 'item_ids' is set
      if @api_client.config.client_side_validation && item_ids.nil?
        fail ArgumentError, "Missing the required parameter 'item_ids' when calling AssetsApi.post_characters_character_id_assets_locations"
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = '/characters/{character_id}/assets/locations/'.sub('{' + 'character_id' + '}', character_id.to_s)

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
      header_params[:'X-User-Agent'] = opts[:'x_user_agent'] if !opts[:'x_user_agent'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(item_ids)
      auth_names = ['evesso']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<PostCharactersCharacterIdAssetsLocations200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssetsApi#post_characters_character_id_assets_locations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get character asset names
    # Return names for a set of item ids, which you can get from character assets endpoint. Typically used for items that can customize names, like containers or ships.  --- Alternate route: `/dev/characters/{character_id}/assets/names/`  Alternate route: `/legacy/characters/{character_id}/assets/names/`  Alternate route: `/v1/characters/{character_id}/assets/names/` 
    # @param character_id An EVE character ID
    # @param item_ids A list of item ids
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<PostCharactersCharacterIdAssetsNames200Ok>]
    def post_characters_character_id_assets_names(character_id, item_ids, opts = {})
      data, _status_code, _headers = post_characters_character_id_assets_names_with_http_info(character_id, item_ids, opts)
      data
    end

    # Get character asset names
    # Return names for a set of item ids, which you can get from character assets endpoint. Typically used for items that can customize names, like containers or ships.  --- Alternate route: &#x60;/dev/characters/{character_id}/assets/names/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/assets/names/&#x60;  Alternate route: &#x60;/v1/characters/{character_id}/assets/names/&#x60; 
    # @param character_id An EVE character ID
    # @param item_ids A list of item ids
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(Array<PostCharactersCharacterIdAssetsNames200Ok>, Fixnum, Hash)>] Array<PostCharactersCharacterIdAssetsNames200Ok> data, response status code and response headers
    def post_characters_character_id_assets_names_with_http_info(character_id, item_ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssetsApi.post_characters_character_id_assets_names ...'
      end
      # verify the required parameter 'character_id' is set
      if @api_client.config.client_side_validation && character_id.nil?
        fail ArgumentError, "Missing the required parameter 'character_id' when calling AssetsApi.post_characters_character_id_assets_names"
      end
      if @api_client.config.client_side_validation && character_id < 1
        fail ArgumentError, 'invalid value for "character_id" when calling AssetsApi.post_characters_character_id_assets_names, must be greater than or equal to 1.'
      end

      # verify the required parameter 'item_ids' is set
      if @api_client.config.client_side_validation && item_ids.nil?
        fail ArgumentError, "Missing the required parameter 'item_ids' when calling AssetsApi.post_characters_character_id_assets_names"
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = '/characters/{character_id}/assets/names/'.sub('{' + 'character_id' + '}', character_id.to_s)

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
      header_params[:'X-User-Agent'] = opts[:'x_user_agent'] if !opts[:'x_user_agent'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(item_ids)
      auth_names = ['evesso']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<PostCharactersCharacterIdAssetsNames200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssetsApi#post_characters_character_id_assets_names\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get corporation asset locations
    # Return locations for a set of item ids, which you can get from corporation assets endpoint. Coordinates for items in hangars or stations are set to (0,0,0)  --- Alternate route: `/dev/corporations/{corporation_id}/assets/locations/`  Alternate route: `/v2/corporations/{corporation_id}/assets/locations/`   --- Requires one of the following EVE corporation role(s): Director 
    # @param corporation_id An EVE corporation ID
    # @param item_ids A list of item ids
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<PostCorporationsCorporationIdAssetsLocations200Ok>]
    def post_corporations_corporation_id_assets_locations(corporation_id, item_ids, opts = {})
      data, _status_code, _headers = post_corporations_corporation_id_assets_locations_with_http_info(corporation_id, item_ids, opts)
      data
    end

    # Get corporation asset locations
    # Return locations for a set of item ids, which you can get from corporation assets endpoint. Coordinates for items in hangars or stations are set to (0,0,0)  --- Alternate route: &#x60;/dev/corporations/{corporation_id}/assets/locations/&#x60;  Alternate route: &#x60;/v2/corporations/{corporation_id}/assets/locations/&#x60;   --- Requires one of the following EVE corporation role(s): Director 
    # @param corporation_id An EVE corporation ID
    # @param item_ids A list of item ids
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(Array<PostCorporationsCorporationIdAssetsLocations200Ok>, Fixnum, Hash)>] Array<PostCorporationsCorporationIdAssetsLocations200Ok> data, response status code and response headers
    def post_corporations_corporation_id_assets_locations_with_http_info(corporation_id, item_ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssetsApi.post_corporations_corporation_id_assets_locations ...'
      end
      # verify the required parameter 'corporation_id' is set
      if @api_client.config.client_side_validation && corporation_id.nil?
        fail ArgumentError, "Missing the required parameter 'corporation_id' when calling AssetsApi.post_corporations_corporation_id_assets_locations"
      end
      if @api_client.config.client_side_validation && corporation_id < 1
        fail ArgumentError, 'invalid value for "corporation_id" when calling AssetsApi.post_corporations_corporation_id_assets_locations, must be greater than or equal to 1.'
      end

      # verify the required parameter 'item_ids' is set
      if @api_client.config.client_side_validation && item_ids.nil?
        fail ArgumentError, "Missing the required parameter 'item_ids' when calling AssetsApi.post_corporations_corporation_id_assets_locations"
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = '/corporations/{corporation_id}/assets/locations/'.sub('{' + 'corporation_id' + '}', corporation_id.to_s)

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
      header_params[:'X-User-Agent'] = opts[:'x_user_agent'] if !opts[:'x_user_agent'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(item_ids)
      auth_names = ['evesso']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<PostCorporationsCorporationIdAssetsLocations200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssetsApi#post_corporations_corporation_id_assets_locations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get coporation asset names
    # Return names for a set of item ids, which you can get from corporation assets endpoint. Only valid for items that can customize names, like containers or ships.  --- Alternate route: `/dev/corporations/{corporation_id}/assets/names/`  Alternate route: `/legacy/corporations/{corporation_id}/assets/names/`  Alternate route: `/v1/corporations/{corporation_id}/assets/names/`   --- Requires one of the following EVE corporation role(s): Director 
    # @param corporation_id An EVE corporation ID
    # @param item_ids A list of item ids
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<PostCorporationsCorporationIdAssetsNames200Ok>]
    def post_corporations_corporation_id_assets_names(corporation_id, item_ids, opts = {})
      data, _status_code, _headers = post_corporations_corporation_id_assets_names_with_http_info(corporation_id, item_ids, opts)
      data
    end

    # Get coporation asset names
    # Return names for a set of item ids, which you can get from corporation assets endpoint. Only valid for items that can customize names, like containers or ships.  --- Alternate route: &#x60;/dev/corporations/{corporation_id}/assets/names/&#x60;  Alternate route: &#x60;/legacy/corporations/{corporation_id}/assets/names/&#x60;  Alternate route: &#x60;/v1/corporations/{corporation_id}/assets/names/&#x60;   --- Requires one of the following EVE corporation role(s): Director 
    # @param corporation_id An EVE corporation ID
    # @param item_ids A list of item ids
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :token Access token to use if unable to set a header
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(Array<PostCorporationsCorporationIdAssetsNames200Ok>, Fixnum, Hash)>] Array<PostCorporationsCorporationIdAssetsNames200Ok> data, response status code and response headers
    def post_corporations_corporation_id_assets_names_with_http_info(corporation_id, item_ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssetsApi.post_corporations_corporation_id_assets_names ...'
      end
      # verify the required parameter 'corporation_id' is set
      if @api_client.config.client_side_validation && corporation_id.nil?
        fail ArgumentError, "Missing the required parameter 'corporation_id' when calling AssetsApi.post_corporations_corporation_id_assets_names"
      end
      if @api_client.config.client_side_validation && corporation_id < 1
        fail ArgumentError, 'invalid value for "corporation_id" when calling AssetsApi.post_corporations_corporation_id_assets_names, must be greater than or equal to 1.'
      end

      # verify the required parameter 'item_ids' is set
      if @api_client.config.client_side_validation && item_ids.nil?
        fail ArgumentError, "Missing the required parameter 'item_ids' when calling AssetsApi.post_corporations_corporation_id_assets_names"
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = '/corporations/{corporation_id}/assets/names/'.sub('{' + 'corporation_id' + '}', corporation_id.to_s)

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
      header_params[:'X-User-Agent'] = opts[:'x_user_agent'] if !opts[:'x_user_agent'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(item_ids)
      auth_names = ['evesso']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<PostCorporationsCorporationIdAssetsNames200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssetsApi#post_corporations_corporation_id_assets_names\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
