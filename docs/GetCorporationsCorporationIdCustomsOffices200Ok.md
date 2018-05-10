# Esi::GetCorporationsCorporationIdCustomsOffices200Ok

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**alliance_tax_rate** | **Float** | Only present if alliance access is allowed | [optional] 
**allow_access_with_standings** | **BOOLEAN** | standing_level and any standing related tax rate only present when this is true | 
**allow_alliance_access** | **BOOLEAN** | allow_alliance_access boolean | 
**bad_standing_tax_rate** | **Float** | bad_standing_tax_rate number | [optional] 
**corporation_tax_rate** | **Float** | corporation_tax_rate number | [optional] 
**excellent_standing_tax_rate** | **Float** | Tax rate for entities with excellent level of standing, only present if this level is allowed, same for all other standing related tax rates | [optional] 
**good_standing_tax_rate** | **Float** | good_standing_tax_rate number | [optional] 
**neutral_standing_tax_rate** | **Float** | neutral_standing_tax_rate number | [optional] 
**office_id** | **Integer** | unique ID of this customs office | 
**reinforce_exit_end** | **Integer** | reinforce_exit_end integer | 
**reinforce_exit_start** | **Integer** | Together with reinforce_exit_end, marks a 2-hour period where this customs office could exit reinforcement mode during the day after initial attack | 
**standing_level** | **String** | Access is allowed only for entities with this level of standing or better | [optional] 
**system_id** | **Integer** | ID of the solar system this customs office is located in | 
**terrible_standing_tax_rate** | **Float** | terrible_standing_tax_rate number | [optional] 


