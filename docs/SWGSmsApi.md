# SWGSmsApi

All URIs are relative to *https://api.phone.com/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAccountSms**](SWGSmsApi.md#createaccountsms) | **POST** /accounts/{account_id}/sms | Send a SMS to one or a group of recipients.
[**getAccountSms**](SWGSmsApi.md#getaccountsms) | **GET** /accounts/{account_id}/sms/{sms_id} | This service shows the details of an individual SMS.
[**listAccountSms**](SWGSmsApi.md#listaccountsms) | **GET** /accounts/{account_id}/sms | Get a list of SMS messages for an account.
[**patchAccountSms**](SWGSmsApi.md#patchaccountsms) | **PATCH** /accounts/{account_id}/sms/{sms_id} | Update the is_new parameter in a sms record.


# **createAccountSms**
```objc
-(NSURLSessionTask*) createAccountSmsWithAccountId: (NSNumber*) accountId
    data: (SWGCreateSmsParams*) data
        completionHandler: (void (^)(SWGSmsFull* output, NSError* error)) handler;
```

Send a SMS to one or a group of recipients.

Send a SMS to one or a group of recipients. For details on the input fields, see Intro to SMS. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the Extension level Create SMS API with the following definition: POST https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/sms

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* accountId = @56; // Account ID
SWGCreateSmsParams* data = [[SWGCreateSmsParams alloc] init]; // SMS data

SWGSmsApi*apiInstance = [[SWGSmsApi alloc] init];

// Send a SMS to one or a group of recipients.
[apiInstance createAccountSmsWithAccountId:accountId
              data:data
          completionHandler: ^(SWGSmsFull* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSmsApi->createAccountSms: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSNumber***| Account ID | 
 **data** | [**SWGCreateSmsParams***](SWGCreateSmsParams.md)| SMS data | 

### Return type

[**SWGSmsFull***](SWGSmsFull.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountSms**
```objc
-(NSURLSessionTask*) getAccountSmsWithAccountId: (NSNumber*) accountId
    smsId: (NSString*) smsId
        completionHandler: (void (^)(SWGSmsFull* output, NSError* error)) handler;
```

This service shows the details of an individual SMS.

This service shows the details of an individual SMS. See Intro to SMS for more info on the properties. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the Extension level Get SMS API with the following definition: GET https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/sms/:sms_id

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* accountId = @56; // Account ID
NSString* smsId = @"smsId_example"; // SMS ID

SWGSmsApi*apiInstance = [[SWGSmsApi alloc] init];

// This service shows the details of an individual SMS.
[apiInstance getAccountSmsWithAccountId:accountId
              smsId:smsId
          completionHandler: ^(SWGSmsFull* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSmsApi->getAccountSms: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSNumber***| Account ID | 
 **smsId** | **NSString***| SMS ID | 

### Return type

[**SWGSmsFull***](SWGSmsFull.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAccountSms**
```objc
-(NSURLSessionTask*) listAccountSmsWithAccountId: (NSNumber*) accountId
    filtersId: (NSArray<NSString*>*) filtersId
    filtersFrom: (NSString*) filtersFrom
    filtersTo: (NSString*) filtersTo
    filtersDirection: (NSString*) filtersDirection
    filtersExtension: (NSArray<NSString*>*) filtersExtension
    filtersCreatedAt: (NSString*) filtersCreatedAt
    sortId: (NSString*) sortId
    sortCreatedAt: (NSString*) sortCreatedAt
    limit: (NSNumber*) limit
    offset: (NSNumber*) offset
    fields: (NSString*) fields
        completionHandler: (void (^)(SWGListSms* output, NSError* error)) handler;
```

Get a list of SMS messages for an account.

Get a list of SMS messages for an account. See Intro to SMS for more info on the properties. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the Extension level List SMS API with the following definition: GET https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/sms

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
NSString* filtersDirection = @"filtersDirection_example"; // Direction filter (optional)
NSArray<NSString*>* filtersExtension = @[@"filtersExtension_example"]; // Extension filter (optional)
NSString* filtersCreatedAt = @"filtersCreatedAt_example"; // Date string representing the UTC time that sms was created (optional)
NSString* sortId = @"sortId_example"; // ID sorting (optional)
NSString* sortCreatedAt = @"sortCreatedAt_example"; // Sort by created time of message (optional)
NSNumber* limit = @56; // Max results (optional)
NSNumber* offset = @56; // Results to skip (optional)
NSString* fields = @"fields_example"; // Field set (optional)

SWGSmsApi*apiInstance = [[SWGSmsApi alloc] init];

// Get a list of SMS messages for an account.
[apiInstance listAccountSmsWithAccountId:accountId
              filtersId:filtersId
              filtersFrom:filtersFrom
              filtersTo:filtersTo
              filtersDirection:filtersDirection
              filtersExtension:filtersExtension
              filtersCreatedAt:filtersCreatedAt
              sortId:sortId
              sortCreatedAt:sortCreatedAt
              limit:limit
              offset:offset
              fields:fields
          completionHandler: ^(SWGListSms* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSmsApi->listAccountSms: %@", error);
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
 **filtersDirection** | **NSString***| Direction filter | [optional] 
 **filtersExtension** | [**NSArray&lt;NSString*&gt;***](NSString*.md)| Extension filter | [optional] 
 **filtersCreatedAt** | **NSString***| Date string representing the UTC time that sms was created | [optional] 
 **sortId** | **NSString***| ID sorting | [optional] 
 **sortCreatedAt** | **NSString***| Sort by created time of message | [optional] 
 **limit** | **NSNumber***| Max results | [optional] 
 **offset** | **NSNumber***| Results to skip | [optional] 
 **fields** | **NSString***| Field set | [optional] 

### Return type

[**SWGListSms***](SWGListSms.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchAccountSms**
```objc
-(NSURLSessionTask*) patchAccountSmsWithAccountId: (NSNumber*) accountId
    smsId: (NSString*) smsId
    data: (SWGPatchSmsParams*) data
        completionHandler: (void (^)(SWGSmsFull* output, NSError* error)) handler;
```

Update the is_new parameter in a sms record.

Update the is_new parameter in a sms record. See Account SMS for more info on the properties. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the Extension level Patch SMS API with the following definition: PATCH https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/sms/:sms_id

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* accountId = @56; // Account ID
NSString* smsId = @"smsId_example"; // SMS ID
SWGPatchSmsParams* data = [[SWGPatchSmsParams alloc] init]; // Sms data (optional)

SWGSmsApi*apiInstance = [[SWGSmsApi alloc] init];

// Update the is_new parameter in a sms record.
[apiInstance patchAccountSmsWithAccountId:accountId
              smsId:smsId
              data:data
          completionHandler: ^(SWGSmsFull* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSmsApi->patchAccountSms: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSNumber***| Account ID | 
 **smsId** | **NSString***| SMS ID | 
 **data** | [**SWGPatchSmsParams***](SWGPatchSmsParams.md)| Sms data | [optional] 

### Return type

[**SWGSmsFull***](SWGSmsFull.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

