# Esi::GetCorporationsCorporationIdOrdersHistory200Ok

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**duration** | **Integer** | Number of days the order was valid for (starting from the issued date). An order expires at time issued + duration | 
**escrow** | **Float** | For buy orders, the amount of ISK in escrow | [optional] 
**is_buy_order** | **BOOLEAN** | True if the order is a bid (buy) order | [optional] 
**issued** | **DateTime** | Date and time when this order was issued | 
**location_id** | **Integer** | ID of the location where order was placed | 
**min_volume** | **Integer** | For buy orders, the minimum quantity that will be accepted in a matching sell order | [optional] 
**order_id** | **Integer** | Unique order ID | 
**price** | **Float** | Cost per unit for this order | 
**range** | **String** | Valid order range, numbers are ranges in jumps | 
**region_id** | **Integer** | ID of the region where order was placed | 
**state** | **String** | Current order state | 
**type_id** | **Integer** | The type ID of the item transacted in this order | 
**volume_remain** | **Integer** | Quantity of items still required or offered | 
**volume_total** | **Integer** | Quantity of items required or offered at time order was placed | 
**wallet_division** | **Integer** | The corporation wallet division used for this order | 


