# Esi::ClonesApi

All URIs are relative to *https://esi.evetech.net/latest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_characters_character_id_clones**](ClonesApi.md#get_characters_character_id_clones) | **GET** /characters/{character_id}/clones/ | Get clones
[**get_characters_character_id_implants**](ClonesApi.md#get_characters_character_id_implants) | **GET** /characters/{character_id}/implants/ | Get active implants


# **get_characters_character_id_clones**
> GetCharactersCharacterIdClonesOk get_characters_character_id_clones(character_id, opts)

Get clones

A list of the character's clones  --- Alternate route: `/dev/characters/{character_id}/clones/`  Alternate route: `/v3/characters/{character_id}/clones/`  --- This route is cached for up to 120 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
Esi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Esi::ClonesApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  #Get clones
  result = api_instance.get_characters_character_id_clones(character_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling ClonesApi->get_characters_character_id_clones: #{e}"
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

[**GetCharactersCharacterIdClonesOk**](GetCharactersCharacterIdClonesOk.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_characters_character_id_implants**
> Array&lt;Integer&gt; get_characters_character_id_implants(character_id, opts)

Get active implants

Return implants on the active clone of a character  --- Alternate route: `/dev/characters/{character_id}/implants/`  Alternate route: `/legacy/characters/{character_id}/implants/`  Alternate route: `/v1/characters/{character_id}/implants/`  --- This route is cached for up to 300 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
Esi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Esi::ClonesApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  #Get active implants
  result = api_instance.get_characters_character_id_implants(character_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling ClonesApi->get_characters_character_id_implants: #{e}"
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

**Array&lt;Integer&gt;**

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



