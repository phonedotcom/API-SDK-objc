# SWGCallbackObject

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **NSString*** | URL of webhook, where the event is emitted to. Note: The listener supports both HTTP &amp; HTTPS, we highly recommend that users use HTTPS on all callbacks (with user name and password) to ensure no one may send malicious events pretending to be Phone.com. | [optional] 
**role** | **NSString*** | Role of callback: main or backup | [optional] 
**verb** | **NSString*** | HTTP method: get or post | [optional] 
**username** | **NSString*** | Optional user name needed to logon to the webhook URL | [optional] 
**password** | **NSString*** | Optional password needed to logon to the webhook URL | [optional] 
**timeout** | **NSNumber*** | Optional : Duration of HTTP response will time out while sending the event to the callback URL. (1 - 10 seconds) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


