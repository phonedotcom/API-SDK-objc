# SWGVoicemailApi

All URIs are relative to *https://api.phone.com/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAccountVoicemail**](SWGVoicemailApi.md#getaccountvoicemail) | **GET** /accounts/{account_id}/voicemail/{voicemail_id} | This service shows the details of an individual voicemail.
[**listAccountVoicemail**](SWGVoicemailApi.md#listaccountvoicemail) | **GET** /accounts/{account_id}/voicemail | Get a list of voicemail messages for an account.
[**patchAccountVoicemail**](SWGVoicemailApi.md#patchaccountvoicemail) | **PATCH** /accounts/{account_id}/voicemail/{voicemail_id} | Update the is_new parameter in a voicemail record.


# **getAccountVoicemail**
```objc
-(NSURLSessionTask*) getAccountVoicemailWithAccountId: (NSNumber*) accountId
    voicemailId: (NSString*) voicemailId
        completionHandler: (void (^)(SWGVoicemailFull* output, NSError* error)) handler;
```

This service shows the details of an individual voicemail.

This service shows the details of an individual voicemail. See Intro to Voicemail for more info on the properties. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the Get Voicemail API with the following definition: GET https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/voicemail/:voicemail_id

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* accountId = @56; // Account ID
NSString* voicemailId = @"voicemailId_example"; // Voicemail ID

SWGVoicemailApi*apiInstance = [[SWGVoicemailApi alloc] init];

// This service shows the details of an individual voicemail.
[apiInstance getAccountVoicemailWithAccountId:accountId
              voicemailId:voicemailId
          completionHandler: ^(SWGVoicemailFull* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGVoicemailApi->getAccountVoicemail: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSNumber***| Account ID | 
 **voicemailId** | **NSString***| Voicemail ID | 

### Return type

[**SWGVoicemailFull***](SWGVoicemailFull.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAccountVoicemail**
```objc
-(NSURLSessionTask*) listAccountVoicemailWithAccountId: (NSNumber*) accountId
    filtersId: (NSArray<NSString*>*) filtersId
    filtersFrom: (NSString*) filtersFrom
    filtersTo: (NSString*) filtersTo
    filtersIsNew: (NSNumber*) filtersIsNew
    filtersCreatedAt: (NSString*) filtersCreatedAt
    filtersExtension: (NSArray<NSString*>*) filtersExtension
    sortId: (NSString*) sortId
    sortCreatedAt: (NSString*) sortCreatedAt
    limit: (NSNumber*) limit
    offset: (NSNumber*) offset
    fields: (NSString*) fields
        completionHandler: (void (^)(SWGListVoicemail* output, NSError* error)) handler;
```

Get a list of voicemail messages for an account.

Get a list of voicemail messages for an account. See Intro to Voicemail for more info on the properties. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the List Voicemail API with the following definition: GET https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/voicemail

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* accountId = @56; // Account ID
NSArray<NSString*>* filtersId = @[@"filtersId_example"]; // ID filter (optional)
NSString* filtersFrom = @"filtersFrom_example"; // Caller ID filter (optional)
NSString* filtersTo = @"filtersTo_example"; // Callee ID filter, the E.164 phone number to send the SMS TO. Note you must encode the + as %2B (optional)
NSNumber* filtersIsNew = @true; //  (optional)
NSString* filtersCreatedAt = @"filtersCreatedAt_example"; // Date string representing the UTC time that sms was created (optional)
NSArray<NSString*>* filtersExtension = @[@"filtersExtension_example"]; // Extension filter (optional)
NSString* sortId = @"sortId_example"; // ID sorting (optional)
NSString* sortCreatedAt = @"sortCreatedAt_example"; // Sort by the UTC time that voicemail was created (optional)
NSNumber* limit = @56; // Max results (optional)
NSNumber* offset = @56; // Results to skip (optional)
NSString* fields = @"fields_example"; // Field set (optional)

SWGVoicemailApi*apiInstance = [[SWGVoicemailApi alloc] init];

// Get a list of voicemail messages for an account.
[apiInstance listAccountVoicemailWithAccountId:accountId
              filtersId:filtersId
              filtersFrom:filtersFrom
              filtersTo:filtersTo
              filtersIsNew:filtersIsNew
              filtersCreatedAt:filtersCreatedAt
              filtersExtension:filtersExtension
              sortId:sortId
              sortCreatedAt:sortCreatedAt
              limit:limit
              offset:offset
              fields:fields
          completionHandler: ^(SWGListVoicemail* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGVoicemailApi->listAccountVoicemail: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSNumber***| Account ID | 
 **filtersId** | [**NSArray&lt;NSString*&gt;***](NSString*.md)| ID filter | [optional] 
 **filtersFrom** | **NSString***| Caller ID filter | [optional] 
 **filtersTo** | **NSString***| Callee ID filter, the E.164 phone number to send the SMS TO. Note you must encode the + as %2B | [optional] 
 **filtersIsNew** | **NSNumber***|  | [optional] 
 **filtersCreatedAt** | **NSString***| Date string representing the UTC time that sms was created | [optional] 
 **filtersExtension** | [**NSArray&lt;NSString*&gt;***](NSString*.md)| Extension filter | [optional] 
 **sortId** | **NSString***| ID sorting | [optional] 
 **sortCreatedAt** | **NSString***| Sort by the UTC time that voicemail was created | [optional] 
 **limit** | **NSNumber***| Max results | [optional] 
 **offset** | **NSNumber***| Results to skip | [optional] 
 **fields** | **NSString***| Field set | [optional] 

### Return type

[**SWGListVoicemail***](SWGListVoicemail.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchAccountVoicemail**
```objc
-(NSURLSessionTask*) patchAccountVoicemailWithAccountId: (NSNumber*) accountId
    voicemailId: (NSString*) voicemailId
    data: (SWGPatchVoicemailParams*) data
        completionHandler: (void (^)(SWGVoicemailFull* output, NSError* error)) handler;
```

Update the is_new parameter in a voicemail record.

Update the is_new parameter in a voicemail record. See Account Voicemail for more info on the properties. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the Patch Voicemail API with the following definition: PATCH https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/voicemail/:voicemail_id

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* accountId = @56; // Account ID
NSString* voicemailId = @"voicemailId_example"; // Voicemail ID
SWGPatchVoicemailParams* data = [[SWGPatchVoicemailParams alloc] init]; // Payment data (optional)

SWGVoicemailApi*apiInstance = [[SWGVoicemailApi alloc] init];

// Update the is_new parameter in a voicemail record.
[apiInstance patchAccountVoicemailWithAccountId:accountId
              voicemailId:voicemailId
              data:data
          completionHandler: ^(SWGVoicemailFull* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGVoicemailApi->patchAccountVoicemail: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSNumber***| Account ID | 
 **voicemailId** | **NSString***| Voicemail ID | 
 **data** | [**SWGPatchVoicemailParams***](SWGPatchVoicemailParams.md)| Payment data | [optional] 

### Return type

[**SWGVoicemailFull***](SWGVoicemailFull.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

