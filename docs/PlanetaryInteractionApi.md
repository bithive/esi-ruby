# Esi::PlanetaryInteractionApi

All URIs are relative to *https://esi.evetech.net/latest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_characters_character_id_planets**](PlanetaryInteractionApi.md#get_characters_character_id_planets) | **GET** /characters/{character_id}/planets/ | Get colonies
[**get_characters_character_id_planets_planet_id**](PlanetaryInteractionApi.md#get_characters_character_id_planets_planet_id) | **GET** /characters/{character_id}/planets/{planet_id}/ | Get colony layout
[**get_corporations_corporation_id_customs_offices**](PlanetaryInteractionApi.md#get_corporations_corporation_id_customs_offices) | **GET** /corporations/{corporation_id}/customs_offices/ | List corporation customs offices
[**get_universe_schematics_schematic_id**](PlanetaryInteractionApi.md#get_universe_schematics_schematic_id) | **GET** /universe/schematics/{schematic_id}/ | Get schematic information


# **get_characters_character_id_planets**
> Array&lt;GetCharactersCharacterIdPlanets200Ok&gt; get_characters_character_id_planets(character_id, opts)

Get colonies

Returns a list of all planetary colonies owned by a character.  --- Alternate route: `/dev/characters/{character_id}/planets/`  Alternate route: `/legacy/characters/{character_id}/planets/`  Alternate route: `/v1/characters/{character_id}/planets/`  --- This route is cached for up to 600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
Esi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Esi::PlanetaryInteractionApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  #Get colonies
  result = api_instance.get_characters_character_id_planets(character_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling PlanetaryInteractionApi->get_characters_character_id_planets: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 
 **token** | **String**| Access token to use if unable to set a header | [optional] 

### Return type

[**Array&lt;GetCharactersCharacterIdPlanets200Ok&gt;**](GetCharactersCharacterIdPlanets200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_characters_character_id_planets_planet_id**
> GetCharactersCharacterIdPlanetsPlanetIdOk get_characters_character_id_planets_planet_id(character_idplanet_id, opts)

Get colony layout

Returns full details on the layout of a single planetary colony, including links, pins and routes. Note: Planetary information is only recalculated when the colony is viewed through the client. Information will not update until this criteria is met.  --- Alternate route: `/dev/characters/{character_id}/planets/{planet_id}/`  Alternate route: `/v3/characters/{character_id}/planets/{planet_id}/`  --- This route is cached for up to 600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
Esi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Esi::PlanetaryInteractionApi.new

character_id = 56 # Integer | An EVE character ID

planet_id = 56 # Integer | Planet id of the target planet

opts = { 
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  #Get colony layout
  result = api_instance.get_characters_character_id_planets_planet_id(character_idplanet_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling PlanetaryInteractionApi->get_characters_character_id_planets_planet_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **planet_id** | **Integer**| Planet id of the target planet | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 
 **token** | **String**| Access token to use if unable to set a header | [optional] 

### Return type

[**GetCharactersCharacterIdPlanetsPlanetIdOk**](GetCharactersCharacterIdPlanetsPlanetIdOk.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_corporations_corporation_id_customs_offices**
> Array&lt;GetCorporationsCorporationIdCustomsOffices200Ok&gt; get_corporations_corporation_id_customs_offices(corporation_id, opts)

List corporation customs offices

List customs offices owned by a corporation  --- Alternate route: `/dev/corporations/{corporation_id}/customs_offices/`  Alternate route: `/legacy/corporations/{corporation_id}/customs_offices/`  Alternate route: `/v1/corporations/{corporation_id}/customs_offices/`  --- This route is cached for up to 3600 seconds  --- Requires one of the following EVE corporation role(s): Director 

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
Esi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Esi::PlanetaryInteractionApi.new

corporation_id = 56 # Integer | An EVE corporation ID

opts = { 
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 1 # Integer | Which page of results to return
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  #List corporation customs offices
  result = api_instance.get_corporations_corporation_id_customs_offices(corporation_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling PlanetaryInteractionApi->get_corporations_corporation_id_customs_offices: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **corporation_id** | **Integer**| An EVE corporation ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 
 **page** | **Integer**| Which page of results to return | [optional] [default to 1]
 **token** | **String**| Access token to use if unable to set a header | [optional] 

### Return type

[**Array&lt;GetCorporationsCorporationIdCustomsOffices200Ok&gt;**](GetCorporationsCorporationIdCustomsOffices200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_universe_schematics_schematic_id**
> GetUniverseSchematicsSchematicIdOk get_universe_schematics_schematic_id(schematic_id, opts)

Get schematic information

Get information on a planetary factory schematic  --- Alternate route: `/dev/universe/schematics/{schematic_id}/`  Alternate route: `/legacy/universe/schematics/{schematic_id}/`  Alternate route: `/v1/universe/schematics/{schematic_id}/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = Esi::PlanetaryInteractionApi.new

schematic_id = 56 # Integer | A PI schematic ID

opts = { 
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  #Get schematic information
  result = api_instance.get_universe_schematics_schematic_id(schematic_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling PlanetaryInteractionApi->get_universe_schematics_schematic_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schematic_id** | **Integer**| A PI schematic ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 

### Return type

[**GetUniverseSchematicsSchematicIdOk**](GetUniverseSchematicsSchematicIdOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



