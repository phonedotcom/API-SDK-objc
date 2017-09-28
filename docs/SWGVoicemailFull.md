# SWGVoicemailFull

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** | Unique Voicemail ID. Read-only. | [optional] 
**downloadUrl** | **NSString*** | Name. Required. | [optional] 
**extension** | [**SWGExtensionSummary***](SWGExtensionSummary.md) | Extension where the voicemail is saved into. | [optional] 
**from** | [**SWGFromObject***](SWGFromObject.md) | The caller&#39;s information | [optional] 
**to** | **NSString*** | The phone number where the caller is calling | [optional] 
**isNew** | **NSNumber*** | True when Voicemail is new; False when Voicemail has been listened | [optional] 
**createdAt** | **NSNumber*** | Date string representing the UTC time that the object was created in the Phone.com API system. | [optional] 
**folder** | **NSString*** | Folder name where voicemail is saved | [optional] 
**duration** | **NSNumber*** | Length of voicemail in seconds | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


