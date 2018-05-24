# Esi::KillmailsApi

All URIs are relative to *https://esi.evetech.net/latest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_characters_character_id_killmails_recent**](KillmailsApi.md#get_characters_character_id_killmails_recent) | **GET** /characters/{character_id}/killmails/recent/ | Get a character&#39;s recent kills and losses
[**get_corporations_corporation_id_killmails_recent**](KillmailsApi.md#get_corporations_corporation_id_killmails_recent) | **GET** /corporations/{corporation_id}/killmails/recent/ | Get a corporation&#39;s recent kills and losses
[**get_killmails_killmail_id_killmail_hash**](KillmailsApi.md#get_killmails_killmail_id_killmail_hash) | **GET** /killmails/{killmail_id}/{killmail_hash}/ | Get a single killmail


# **get_characters_character_id_killmails_recent**
> Array&lt;GetCharactersCharacterIdKillmailsRecent200Ok&gt; get_characters_character_id_killmails_recent(character_id, opts)

Get a character's recent kills and losses

Return a list of a character's kills and losses going back 90 days  --- Alternate route: `/dev/characters/{character_id}/killmails/recent/`  Alternate route: `/legacy/characters/{character_id}/killmails/recent/`  Alternate route: `/v1/characters/{character_id}/killmails/recent/`  --- This route is cached for up to 300 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
Esi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Esi::KillmailsApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 1 # Integer | Which page of results to return
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  #Get a character's recent kills and losses
  result = api_instance.get_characters_character_id_killmails_recent(character_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling KillmailsApi->get_characters_character_id_killmails_recent: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 
 **page** | **Integer**| Which page of results to return | [optional] [default to 1]
 **token** | **String**| Access token to use if unable to set a header | [optional] 

### Return type

[**Array&lt;GetCharactersCharacterIdKillmailsRecent200Ok&gt;**](GetCharactersCharacterIdKillmailsRecent200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_corporations_corporation_id_killmails_recent**
> Array&lt;GetCorporationsCorporationIdKillmailsRecent200Ok&gt; get_corporations_corporation_id_killmails_recent(corporation_id, opts)

Get a corporation's recent kills and losses

Get a list of a corporation's kills and losses going back 90 days  --- Alternate route: `/dev/corporations/{corporation_id}/killmails/recent/`  Alternate route: `/legacy/corporations/{corporation_id}/killmails/recent/`  Alternate route: `/v1/corporations/{corporation_id}/killmails/recent/`  --- This route is cached for up to 300 seconds  --- Requires one of the following EVE corporation role(s): Director 

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
Esi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Esi::KillmailsApi.new

corporation_id = 56 # Integer | An EVE corporation ID

opts = { 
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 1 # Integer | Which page of results to return
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  #Get a corporation's recent kills and losses
  result = api_instance.get_corporations_corporation_id_killmails_recent(corporation_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling KillmailsApi->get_corporations_corporation_id_killmails_recent: #{e}"
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

[**Array&lt;GetCorporationsCorporationIdKillmailsRecent200Ok&gt;**](GetCorporationsCorporationIdKillmailsRecent200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_killmails_killmail_id_killmail_hash**
> GetKillmailsKillmailIdKillmailHashOk get_killmails_killmail_id_killmail_hash(killmail_hash, killmail_id, opts)

Get a single killmail

Return a single killmail from its ID and hash  --- Alternate route: `/dev/killmails/{killmail_id}/{killmail_hash}/`  Alternate route: `/legacy/killmails/{killmail_id}/{killmail_hash}/`  Alternate route: `/v1/killmails/{killmail_id}/{killmail_hash}/`  --- This route is cached for up to 1209600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = Esi::KillmailsApi.new

killmail_hash = 'killmail_hash_example' # String | The killmail hash for verification

killmail_id = 56 # Integer | The killmail ID to be queried

opts = { 
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  #Get a single killmail
  result = api_instance.get_killmails_killmail_id_killmail_hash(killmail_hash, killmail_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling KillmailsApi->get_killmails_killmail_id_killmail_hash: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **killmail_hash** | **String**| The killmail hash for verification | 
 **killmail_id** | **Integer**| The killmail ID to be queried | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 

### Return type

[**GetKillmailsKillmailIdKillmailHashOk**](GetKillmailsKillmailIdKillmailHashOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



