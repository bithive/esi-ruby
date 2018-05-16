# Esi::FactionWarfareApi

All URIs are relative to *https://esi.evetech.net/latest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_characters_character_id_fw_stats**](FactionWarfareApi.md#get_characters_character_id_fw_stats) | **GET** /characters/{character_id}/fw/stats/ | Overview of a character involved in faction warfare
[**get_corporations_corporation_id_fw_stats**](FactionWarfareApi.md#get_corporations_corporation_id_fw_stats) | **GET** /corporations/{corporation_id}/fw/stats/ | Overview of a corporation involved in faction warfare
[**get_fw_leaderboards**](FactionWarfareApi.md#get_fw_leaderboards) | **GET** /fw/leaderboards/ | List of the top factions in faction warfare
[**get_fw_leaderboards_characters**](FactionWarfareApi.md#get_fw_leaderboards_characters) | **GET** /fw/leaderboards/characters/ | List of the top pilots in faction warfare
[**get_fw_leaderboards_corporations**](FactionWarfareApi.md#get_fw_leaderboards_corporations) | **GET** /fw/leaderboards/corporations/ | List of the top corporations in faction warfare
[**get_fw_stats**](FactionWarfareApi.md#get_fw_stats) | **GET** /fw/stats/ | An overview of statistics about factions involved in faction warfare
[**get_fw_systems**](FactionWarfareApi.md#get_fw_systems) | **GET** /fw/systems/ | Ownership of faction warfare systems
[**get_fw_wars**](FactionWarfareApi.md#get_fw_wars) | **GET** /fw/wars/ | Data about which NPC factions are at war


# **get_characters_character_id_fw_stats**
> GetCharactersCharacterIdFwStatsOk get_characters_character_id_fw_stats(character_id, opts)

Overview of a character involved in faction warfare

Statistical overview of a character involved in faction warfare  --- Alternate route: `/dev/characters/{character_id}/fw/stats/`  Alternate route: `/legacy/characters/{character_id}/fw/stats/`  Alternate route: `/v1/characters/{character_id}/fw/stats/`  --- This route expires daily at 11:05

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
Esi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Esi::FactionWarfareApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example', # String | Access token to use if unable to set a header
  user_agent: 'user_agent_example', # String | Client identifier, takes precedence over headers
  x_user_agent: 'x_user_agent_example' # String | Client identifier, takes precedence over User-Agent
}

begin
  #Overview of a character involved in faction warfare
  result = api_instance.get_characters_character_id_fw_stats(character_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling FactionWarfareApi->get_characters_character_id_fw_stats: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetCharactersCharacterIdFwStatsOk**](GetCharactersCharacterIdFwStatsOk.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_corporations_corporation_id_fw_stats**
> GetCorporationsCorporationIdFwStatsOk get_corporations_corporation_id_fw_stats(corporation_id, opts)

Overview of a corporation involved in faction warfare

Statistics about a corporation involved in faction warfare  --- Alternate route: `/dev/corporations/{corporation_id}/fw/stats/`  Alternate route: `/legacy/corporations/{corporation_id}/fw/stats/`  Alternate route: `/v1/corporations/{corporation_id}/fw/stats/`  --- This route expires daily at 11:05

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
Esi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Esi::FactionWarfareApi.new

corporation_id = 56 # Integer | An EVE corporation ID

opts = { 
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example', # String | Access token to use if unable to set a header
  user_agent: 'user_agent_example', # String | Client identifier, takes precedence over headers
  x_user_agent: 'x_user_agent_example' # String | Client identifier, takes precedence over User-Agent
}

begin
  #Overview of a corporation involved in faction warfare
  result = api_instance.get_corporations_corporation_id_fw_stats(corporation_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling FactionWarfareApi->get_corporations_corporation_id_fw_stats: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **corporation_id** | **Integer**| An EVE corporation ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetCorporationsCorporationIdFwStatsOk**](GetCorporationsCorporationIdFwStatsOk.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_fw_leaderboards**
> GetFwLeaderboardsOk get_fw_leaderboards(opts)

List of the top factions in faction warfare

Top 4 leaderboard of factions for kills and victory points separated by total, last week and yesterday.  --- Alternate route: `/dev/fw/leaderboards/`  Alternate route: `/legacy/fw/leaderboards/`  Alternate route: `/v1/fw/leaderboards/`  --- This route expires daily at 11:05

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = Esi::FactionWarfareApi.new

opts = { 
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  user_agent: 'user_agent_example', # String | Client identifier, takes precedence over headers
  x_user_agent: 'x_user_agent_example' # String | Client identifier, takes precedence over User-Agent
}

begin
  #List of the top factions in faction warfare
  result = api_instance.get_fw_leaderboards(opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling FactionWarfareApi->get_fw_leaderboards: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetFwLeaderboardsOk**](GetFwLeaderboardsOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_fw_leaderboards_characters**
> GetFwLeaderboardsCharactersOk get_fw_leaderboards_characters(opts)

List of the top pilots in faction warfare

Top 100 leaderboard of pilots for kills and victory points separated by total, last week and yesterday.  --- Alternate route: `/dev/fw/leaderboards/characters/`  Alternate route: `/legacy/fw/leaderboards/characters/`  Alternate route: `/v1/fw/leaderboards/characters/`  --- This route expires daily at 11:05

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = Esi::FactionWarfareApi.new

opts = { 
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  user_agent: 'user_agent_example', # String | Client identifier, takes precedence over headers
  x_user_agent: 'x_user_agent_example' # String | Client identifier, takes precedence over User-Agent
}

begin
  #List of the top pilots in faction warfare
  result = api_instance.get_fw_leaderboards_characters(opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling FactionWarfareApi->get_fw_leaderboards_characters: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetFwLeaderboardsCharactersOk**](GetFwLeaderboardsCharactersOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_fw_leaderboards_corporations**
> GetFwLeaderboardsCorporationsOk get_fw_leaderboards_corporations(opts)

List of the top corporations in faction warfare

Top 10 leaderboard of corporations for kills and victory points separated by total, last week and yesterday.  --- Alternate route: `/dev/fw/leaderboards/corporations/`  Alternate route: `/legacy/fw/leaderboards/corporations/`  Alternate route: `/v1/fw/leaderboards/corporations/`  --- This route expires daily at 11:05

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = Esi::FactionWarfareApi.new

opts = { 
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  user_agent: 'user_agent_example', # String | Client identifier, takes precedence over headers
  x_user_agent: 'x_user_agent_example' # String | Client identifier, takes precedence over User-Agent
}

begin
  #List of the top corporations in faction warfare
  result = api_instance.get_fw_leaderboards_corporations(opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling FactionWarfareApi->get_fw_leaderboards_corporations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetFwLeaderboardsCorporationsOk**](GetFwLeaderboardsCorporationsOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_fw_stats**
> Array&lt;GetFwStats200Ok&gt; get_fw_stats(opts)

An overview of statistics about factions involved in faction warfare

Statistical overviews of factions involved in faction warfare  --- Alternate route: `/dev/fw/stats/`  Alternate route: `/legacy/fw/stats/`  Alternate route: `/v1/fw/stats/`  --- This route expires daily at 11:05

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = Esi::FactionWarfareApi.new

opts = { 
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  user_agent: 'user_agent_example', # String | Client identifier, takes precedence over headers
  x_user_agent: 'x_user_agent_example' # String | Client identifier, takes precedence over User-Agent
}

begin
  #An overview of statistics about factions involved in faction warfare
  result = api_instance.get_fw_stats(opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling FactionWarfareApi->get_fw_stats: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetFwStats200Ok&gt;**](GetFwStats200Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_fw_systems**
> Array&lt;GetFwSystems200Ok&gt; get_fw_systems(opts)

Ownership of faction warfare systems

An overview of the current ownership of faction warfare solar systems  --- Alternate route: `/legacy/fw/systems/`  Alternate route: `/v1/fw/systems/`  --- This route is cached for up to 1800 seconds  --- [This route has an available update](https://esi.evetech.net/diff/latest/dev/#GET-/fw/systems/)

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = Esi::FactionWarfareApi.new

opts = { 
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  user_agent: 'user_agent_example', # String | Client identifier, takes precedence over headers
  x_user_agent: 'x_user_agent_example' # String | Client identifier, takes precedence over User-Agent
}

begin
  #Ownership of faction warfare systems
  result = api_instance.get_fw_systems(opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling FactionWarfareApi->get_fw_systems: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetFwSystems200Ok&gt;**](GetFwSystems200Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_fw_wars**
> Array&lt;GetFwWars200Ok&gt; get_fw_wars(opts)

Data about which NPC factions are at war

Data about which NPC factions are at war  --- Alternate route: `/dev/fw/wars/`  Alternate route: `/legacy/fw/wars/`  Alternate route: `/v1/fw/wars/`  --- This route expires daily at 11:05

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = Esi::FactionWarfareApi.new

opts = { 
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  user_agent: 'user_agent_example', # String | Client identifier, takes precedence over headers
  x_user_agent: 'x_user_agent_example' # String | Client identifier, takes precedence over User-Agent
}

begin
  #Data about which NPC factions are at war
  result = api_instance.get_fw_wars(opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling FactionWarfareApi->get_fw_wars: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetFwWars200Ok&gt;**](GetFwWars200Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



