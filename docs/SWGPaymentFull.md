# SWGPaymentFull

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSNumber*** | Payment Method ID | [optional] 
**voipId** | **NSNumber*** | API Account ID | [optional] 
**status** | **NSString*** | &#39;primary&#39; &#x3D; primary card used for billing; &#39;onfile&#39; &#x3D; card on file; &#39;hidden&#39; &#x3D; deleted card; | [optional] 
**nickname** | **NSString*** | Name of Card | [optional] 
**type** | **NSString*** | &#39;cc&#39; for credit card | [optional] 
**createdAt** | **NSNumber*** | Time payment record is created | [optional] 
**contact** | [**SWGContactResponse***](SWGContactResponse.md) | Detail of contact person | [optional] 
**declineCount** | **NSNumber*** | Number of times the payment method was declined | [optional] 
**nextChargeDate** | **NSNumber*** | Next billing date | [optional] 
**updatedAt** | **NSNumber*** | Last time the payment method was updated | [optional] 
**ccToken** | **NSString*** | Encrypted credit card token to be used for billing | [optional] 
**ccNumber** | **NSString*** | Credit card number partially masked with xxxxxxxx | [optional] 
**ccExp** | **NSString*** | Credit card expiration date | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


