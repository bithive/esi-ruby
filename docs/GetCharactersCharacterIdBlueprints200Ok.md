# EsiRuby::GetCharactersCharacterIdBlueprints200Ok

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**item_id** | **Integer** | Unique ID for this item. | 
**location_flag** | **String** | Type of the location_id | 
**location_id** | **Integer** | References a solar system, station or item_id if this blueprint is located within a container. If the return value is an item_id, then the Character AssetList API must be queried to find the container using the given item_id to determine the correct location of the Blueprint. | 
**material_efficiency** | **Integer** | Material Efficiency Level of the blueprint. | 
**quantity** | **Integer** | A range of numbers with a minimum of -2 and no maximum value where -1 is an original and -2 is a copy. It can be a positive integer if it is a stack of blueprint originals fresh from the market (e.g. no activities performed on them yet). | 
**runs** | **Integer** | Number of runs remaining if the blueprint is a copy, -1 if it is an original. | 
**time_efficiency** | **Integer** | Time Efficiency Level of the blueprint. | 
**type_id** | **Integer** | type_id integer | 


