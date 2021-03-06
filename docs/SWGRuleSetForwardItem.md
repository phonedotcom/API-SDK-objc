# SWGRuleSetForwardItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **NSString*** | Required. Must equal phone_number or extension. | [optional] 
**extension** | [**SWGExtensionSummary***](SWGExtensionSummary.md) | Required if type &#x3D; \&quot;extension\&quot;. Extension that callers should be directed to. Output is an Extension Summary Object. Input must be an Extension Lookup Object. | [optional] 
**number** | **NSString*** | Required if type &#x3D; \&quot;phone_number\&quot;. Phone number that callers should be directed to. Must be a string in E.164 format. | [optional] 
**screening** | **NSNumber*** | Boolean. Optional. Default is FALSE. Use this to activate call screening. If TRUE, the timeout on the parent action should be at least 30 seconds. | [optional] [default to @(NO)]
**callerId** | **NSString*** | Optional. Must equal calling_number or called_number. Defines which phone number should be used for Caller ID. Default is calling_number. | [optional] [default to @"calling_number"]
**voiceTag** | **NSString*** | Optional string. If screening &#x3D; TRUE, this value will be passed into our Text-To-Speech engine and used to inform the caller of who they have reached. | [optional] 
**distinctiveRing** | **NSString*** | Optional. Must equal one of: DEFAULT, STYLE_2, STYLE_3, STYLE_4, STYLE_5, STYLE_6, STYLE_7, STYLE_8, or STYLE_9. Identifies the style of ring tone you will hear when an incoming call is waiting. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


