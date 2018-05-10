# Esi::GetCharactersCharacterIdWalletJournal200Ok

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **Float** | The amount of ISK given or taken from the wallet as a result of the given transaction. Positive when ISK is deposited into the wallet and negative when ISK is withdrawn | [optional] 
**balance** | **Float** | Wallet balance after transaction occurred | [optional] 
**context_id** | **Integer** | An ID that gives extra context to the particular transaction. Because of legacy reasons the context is completely different per ref_type and means different things. It is also possible to not have a context_id | [optional] 
**context_id_type** | **String** | The type of the given context_id if present | [optional] 
**date** | **DateTime** | Date and time of transaction | 
**description** | **String** | The reason for the transaction, mirrors what is seen in the client | 
**first_party_id** | **Integer** | The id of the first party involved in the transaction. This attribute has no consistency and is different or non existant for particular ref_types. The description attribute will help make sense of what this attribute means. For more info about the given ID it can be dropped into the /universe/names/ ESI route to determine its type and name | [optional] 
**id** | **Integer** | Unique journal reference ID | 
**reason** | **String** | The user stated reason for the transaction. Only applies to some ref_types | [optional] 
**ref_type** | **String** | The transaction type for the given transaction. Different transaction types will populate different attributes. Note: If you have an existing XML API application that is using ref_types, you will need to know which string ESI ref_type maps to which integer. You can look at the following file to see string-&gt;int mappings: https://github.com/ccpgames/eve-glue/blob/master/eve_glue/wallet_journal_ref.py | 
**second_party_id** | **Integer** | The id of the second party involved in the transaction. This attribute has no consistency and is different or non existant for particular ref_types. The description attribute will help make sense of what this attribute means. For more info about the given ID it can be dropped into the /universe/names/ ESI route to determine its type and name | [optional] 
**tax** | **Float** | Tax amount received. Only applies to tax related transactions | [optional] 
**tax_receiver_id** | **Integer** | The corporation ID receiving any tax paid. Only applies to tax related transactions | [optional] 


