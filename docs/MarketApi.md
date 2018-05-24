# Esi::MarketApi

All URIs are relative to *https://esi.evetech.net/latest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_characters_character_id_orders**](MarketApi.md#get_characters_character_id_orders) | **GET** /characters/{character_id}/orders/ | List open orders from a character
[**get_characters_character_id_orders_history**](MarketApi.md#get_characters_character_id_orders_history) | **GET** /characters/{character_id}/orders/history/ | List historical orders by a character
[**get_corporations_corporation_id_orders**](MarketApi.md#get_corporations_corporation_id_orders) | **GET** /corporations/{corporation_id}/orders/ | List open orders from a corporation
[**get_corporations_corporation_id_orders_history**](MarketApi.md#get_corporations_corporation_id_orders_history) | **GET** /corporations/{corporation_id}/orders/history/ | List historical orders from a corporation
[**get_markets_groups**](MarketApi.md#get_markets_groups) | **GET** /markets/groups/ | Get item groups
[**get_markets_groups_market_group_id**](MarketApi.md#get_markets_groups_market_group_id) | **GET** /markets/groups/{market_group_id}/ | Get item group information
[**get_markets_prices**](MarketApi.md#get_markets_prices) | **GET** /markets/prices/ | List market prices
[**get_markets_region_id_history**](MarketApi.md#get_markets_region_id_history) | **GET** /markets/{region_id}/history/ | List historical market statistics in a region
[**get_markets_region_id_orders**](MarketApi.md#get_markets_region_id_orders) | **GET** /markets/{region_id}/orders/ | List orders in a region
[**get_markets_region_id_types**](MarketApi.md#get_markets_region_id_types) | **GET** /markets/{region_id}/types/ | List type IDs relevant to a market
[**get_markets_structures_structure_id**](MarketApi.md#get_markets_structures_structure_id) | **GET** /markets/structures/{structure_id}/ | List orders in a structure


# **get_characters_character_id_orders**
> Array&lt;GetCharactersCharacterIdOrders200Ok&gt; get_characters_character_id_orders(character_id, opts)

List open orders from a character

List open market orders placed by a character  --- Alternate route: `/dev/characters/{character_id}/orders/`  Alternate route: `/v2/characters/{character_id}/orders/`  --- This route is cached for up to 1200 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
Esi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Esi::MarketApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  #List open orders from a character
  result = api_instance.get_characters_character_id_orders(character_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling MarketApi->get_characters_character_id_orders: #{e}"
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

[**Array&lt;GetCharactersCharacterIdOrders200Ok&gt;**](GetCharactersCharacterIdOrders200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_characters_character_id_orders_history**
> Array&lt;GetCharactersCharacterIdOrdersHistory200Ok&gt; get_characters_character_id_orders_history(character_id, opts)

List historical orders by a character

List cancelled and expired market orders placed by a character up to 90 days in the past.  --- Alternate route: `/dev/characters/{character_id}/orders/history/`  Alternate route: `/legacy/characters/{character_id}/orders/history/`  Alternate route: `/v1/characters/{character_id}/orders/history/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
Esi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Esi::MarketApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 1 # Integer | Which page of results to return
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  #List historical orders by a character
  result = api_instance.get_characters_character_id_orders_history(character_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling MarketApi->get_characters_character_id_orders_history: #{e}"
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

[**Array&lt;GetCharactersCharacterIdOrdersHistory200Ok&gt;**](GetCharactersCharacterIdOrdersHistory200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_corporations_corporation_id_orders**
> Array&lt;GetCorporationsCorporationIdOrders200Ok&gt; get_corporations_corporation_id_orders(corporation_id, opts)

List open orders from a corporation

List open market orders placed on behalf of a corporation  --- Alternate route: `/dev/corporations/{corporation_id}/orders/`  Alternate route: `/v2/corporations/{corporation_id}/orders/`  --- This route is cached for up to 1200 seconds  --- Requires one of the following EVE corporation role(s): Accountant, Trader 

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
Esi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Esi::MarketApi.new

corporation_id = 56 # Integer | An EVE corporation ID

opts = { 
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 1 # Integer | Which page of results to return
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  #List open orders from a corporation
  result = api_instance.get_corporations_corporation_id_orders(corporation_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling MarketApi->get_corporations_corporation_id_orders: #{e}"
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

[**Array&lt;GetCorporationsCorporationIdOrders200Ok&gt;**](GetCorporationsCorporationIdOrders200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_corporations_corporation_id_orders_history**
> Array&lt;GetCorporationsCorporationIdOrdersHistory200Ok&gt; get_corporations_corporation_id_orders_history(corporation_id, opts)

List historical orders from a corporation

List cancelled and expired market orders placed on behalf of a corporation up to 90 days in the past.  --- Alternate route: `/dev/corporations/{corporation_id}/orders/history/`  Alternate route: `/legacy/corporations/{corporation_id}/orders/history/`  Alternate route: `/v1/corporations/{corporation_id}/orders/history/`  --- This route is cached for up to 3600 seconds  --- Requires one of the following EVE corporation role(s): Accountant, Trader 

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
Esi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Esi::MarketApi.new

corporation_id = 56 # Integer | An EVE corporation ID

opts = { 
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 1 # Integer | Which page of results to return
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  #List historical orders from a corporation
  result = api_instance.get_corporations_corporation_id_orders_history(corporation_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling MarketApi->get_corporations_corporation_id_orders_history: #{e}"
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

[**Array&lt;GetCorporationsCorporationIdOrdersHistory200Ok&gt;**](GetCorporationsCorporationIdOrdersHistory200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_markets_groups**
> Array&lt;Integer&gt; get_markets_groups(opts)

Get item groups

Get a list of item groups  --- Alternate route: `/dev/markets/groups/`  Alternate route: `/legacy/markets/groups/`  Alternate route: `/v1/markets/groups/`  --- This route expires daily at 11:05

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = Esi::MarketApi.new

opts = { 
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  #Get item groups
  result = api_instance.get_markets_groups(opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling MarketApi->get_markets_groups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 

### Return type

**Array&lt;Integer&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_markets_groups_market_group_id**
> GetMarketsGroupsMarketGroupIdOk get_markets_groups_market_group_id(market_group_id, opts)

Get item group information

Get information on an item group  --- Alternate route: `/dev/markets/groups/{market_group_id}/`  Alternate route: `/legacy/markets/groups/{market_group_id}/`  Alternate route: `/v1/markets/groups/{market_group_id}/`  --- This route expires daily at 11:05

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = Esi::MarketApi.new

market_group_id = 56 # Integer | An Eve item group ID

opts = { 
  accept_language: 'en-us', # String | Language to use in the response
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  language: 'en-us' # String | Language to use in the response, takes precedence over Accept-Language
}

begin
  #Get item group information
  result = api_instance.get_markets_groups_market_group_id(market_group_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling MarketApi->get_markets_groups_market_group_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market_group_id** | **Integer**| An Eve item group ID | 
 **accept_language** | **String**| Language to use in the response | [optional] [default to en-us]
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 
 **language** | **String**| Language to use in the response, takes precedence over Accept-Language | [optional] [default to en-us]

### Return type

[**GetMarketsGroupsMarketGroupIdOk**](GetMarketsGroupsMarketGroupIdOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_markets_prices**
> Array&lt;GetMarketsPrices200Ok&gt; get_markets_prices(opts)

List market prices

Return a list of prices  --- Alternate route: `/dev/markets/prices/`  Alternate route: `/legacy/markets/prices/`  Alternate route: `/v1/markets/prices/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = Esi::MarketApi.new

opts = { 
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  #List market prices
  result = api_instance.get_markets_prices(opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling MarketApi->get_markets_prices: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 

### Return type

[**Array&lt;GetMarketsPrices200Ok&gt;**](GetMarketsPrices200Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_markets_region_id_history**
> Array&lt;GetMarketsRegionIdHistory200Ok&gt; get_markets_region_id_history(region_id, type_id, opts)

List historical market statistics in a region

Return a list of historical market statistics for the specified type in a region  --- Alternate route: `/dev/markets/{region_id}/history/`  Alternate route: `/legacy/markets/{region_id}/history/`  Alternate route: `/v1/markets/{region_id}/history/`  --- This route expires daily at 11:05

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = Esi::MarketApi.new

region_id = 56 # Integer | Return statistics in this region

type_id = 56 # Integer | Return statistics for this type

opts = { 
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  #List historical market statistics in a region
  result = api_instance.get_markets_region_id_history(region_id, type_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling MarketApi->get_markets_region_id_history: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region_id** | **Integer**| Return statistics in this region | 
 **type_id** | **Integer**| Return statistics for this type | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 

### Return type

[**Array&lt;GetMarketsRegionIdHistory200Ok&gt;**](GetMarketsRegionIdHistory200Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_markets_region_id_orders**
> Array&lt;GetMarketsRegionIdOrders200Ok&gt; get_markets_region_id_orders(order_type, region_id, opts)

List orders in a region

Return a list of orders in a region  --- Alternate route: `/dev/markets/{region_id}/orders/`  Alternate route: `/legacy/markets/{region_id}/orders/`  Alternate route: `/v1/markets/{region_id}/orders/`  --- This route is cached for up to 300 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = Esi::MarketApi.new

order_type = 'all' # String | Filter buy/sell orders, return all orders by default. If you query without type_id, we always return both buy and sell orders.

region_id = 56 # Integer | Return orders in this region

opts = { 
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 1 # Integer | Which page of results to return
  type_id: 56 # Integer | Return orders only for this type
}

begin
  #List orders in a region
  result = api_instance.get_markets_region_id_orders(order_type, region_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling MarketApi->get_markets_region_id_orders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_type** | **String**| Filter buy/sell orders, return all orders by default. If you query without type_id, we always return both buy and sell orders. | [default to all]
 **region_id** | **Integer**| Return orders in this region | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 
 **page** | **Integer**| Which page of results to return | [optional] [default to 1]
 **type_id** | **Integer**| Return orders only for this type | [optional] 

### Return type

[**Array&lt;GetMarketsRegionIdOrders200Ok&gt;**](GetMarketsRegionIdOrders200Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_markets_region_id_types**
> Array&lt;Integer&gt; get_markets_region_id_types(region_id, opts)

List type IDs relevant to a market

Return a list of type IDs that have active orders in the region, for efficient market indexing.  --- Alternate route: `/dev/markets/{region_id}/types/`  Alternate route: `/legacy/markets/{region_id}/types/`  Alternate route: `/v1/markets/{region_id}/types/`  --- This route is cached for up to 600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = Esi::MarketApi.new

region_id = 56 # Integer | Return statistics in this region

opts = { 
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 1 # Integer | Which page of results to return
}

begin
  #List type IDs relevant to a market
  result = api_instance.get_markets_region_id_types(region_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling MarketApi->get_markets_region_id_types: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region_id** | **Integer**| Return statistics in this region | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 
 **page** | **Integer**| Which page of results to return | [optional] [default to 1]

### Return type

**Array&lt;Integer&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_markets_structures_structure_id**
> Array&lt;GetMarketsStructuresStructureId200Ok&gt; get_markets_structures_structure_id(structure_id, opts)

List orders in a structure

Return all orders in a structure  --- Alternate route: `/dev/markets/structures/{structure_id}/`  Alternate route: `/legacy/markets/structures/{structure_id}/`  Alternate route: `/v1/markets/structures/{structure_id}/`  --- This route is cached for up to 300 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
Esi.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Esi::MarketApi.new

structure_id = 789 # Integer | Return orders in this structure

opts = { 
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 1 # Integer | Which page of results to return
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  #List orders in a structure
  result = api_instance.get_markets_structures_structure_id(structure_id, opts)
  p result
rescue Esi::ApiError => e
  puts "Exception when calling MarketApi->get_markets_structures_structure_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **structure_id** | **Integer**| Return orders in this structure | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 
 **page** | **Integer**| Which page of results to return | [optional] [default to 1]
 **token** | **String**| Access token to use if unable to set a header | [optional] 

### Return type

[**Array&lt;GetMarketsStructuresStructureId200Ok&gt;**](GetMarketsStructuresStructureId200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



