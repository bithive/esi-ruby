# Esi::GetCorporationsCorporationIdStructures200Ok

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**corporation_id** | **Integer** | ID of the corporation that owns the structure | 
**fuel_expires** | **DateTime** | Date on which the structure will run out of fuel | [optional] 
**next_reinforce_apply** | **DateTime** | The date and time when the structure&#39;s newly requested reinforcement times (e.g. next_reinforce_hour and next_reinforce_day) will take effect. | [optional] 
**next_reinforce_hour** | **Integer** | The requested change to reinforce_hour that will take effect at the time shown by next_reinforce_apply. | [optional] 
**next_reinforce_weekday** | **Integer** | The requested change to reinforce_weekday that will take effect at the time shown by next_reinforce_apply. | [optional] 
**profile_id** | **Integer** | The id of the ACL profile for this citadel | 
**reinforce_hour** | **Integer** | The hour of day that determines the four hour window when the structure will randomly exit its reinforcement periods and become vulnerable to attack against its armor and/or hull. The structure will become vulnerable at a random time that is +/- 2 hours centered on the value of this property. | 
**reinforce_weekday** | **Integer** | The day of the week when the structure exits its final reinforcement period and becomes vulnerable to attack against its hull. Monday is 0 and Sunday is 6. | 
**services** | [**Array&lt;GetCorporationsCorporationIdStructuresService&gt;**](GetCorporationsCorporationIdStructuresService.md) | Contains a list of service upgrades, and their state | [optional] 
**state** | **String** | state string | 
**state_timer_end** | **DateTime** | Date at which the structure will move to it&#39;s next state | [optional] 
**state_timer_start** | **DateTime** | Date at which the structure entered it&#39;s current state | [optional] 
**structure_id** | **Integer** | The Item ID of the structure | 
**system_id** | **Integer** | The solar system the structure is in | 
**type_id** | **Integer** | The type id of the structure | 
**unanchors_at** | **DateTime** | Date at which the structure will unanchor | [optional] 


