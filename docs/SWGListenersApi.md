# SWGListenersApi

All URIs are relative to *https://api.phone.com/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAccountListener**](SWGListenersApi.md#createaccountlistener) | **POST** /accounts/{account_id}/listeners | Add a listener object to your account that can be used to subscribe an event.
[**deleteAccountListener**](SWGListenersApi.md#deleteaccountlistener) | **DELETE** /accounts/{account_id}/listeners/{listener_id} | Delete an individual event listener.
[**getAccountListener**](SWGListenersApi.md#getaccountlistener) | **GET** /accounts/{account_id}/listeners/{listener_id} | Show details of an individual listener.
[**listAccountListeners**](SWGListenersApi.md#listaccountlisteners) | **GET** /accounts/{account_id}/listeners | Get a list of listeners for an account.
[**replaceAccountListener**](SWGListenersApi.md#replaceaccountlistener) | **PUT** /accounts/{account_id}/listeners/{listener_id} | Update the settings of an individual event listener.


# **createAccountListener**
```objc
-(NSURLSessionTask*) createAccountListenerWithAccountId: (NSNumber*) accountId
    data: (SWGCreateListenerParams*) data
        completionHandler: (void (^)(SWGListenerFull* output, NSError* error)) handler;
```

Add a listener object to your account that can be used to subscribe an event.

Add a listener object to your account that can be used to subscribe an event. See Account Listeners for more info on the properties. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the Extension level Post Listener API with the following definition: POST https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/listeners

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* accountId = @56; // Account ID
SWGCreateListenerParams* data = [[SWGCreateListenerParams alloc] init]; // Account Listeners Data (optional)

SWGListenersApi*apiInstance = [[SWGListenersApi alloc] init];

// Add a listener object to your account that can be used to subscribe an event.
[apiInstance createAccountListenerWithAccountId:accountId
              data:data
          completionHandler: ^(SWGListenerFull* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGListenersApi->createAccountListener: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSNumber***| Account ID | 
 **data** | [**SWGCreateListenerParams***](SWGCreateListenerParams.md)| Account Listeners Data | [optional] 

### Return type

[**SWGListenerFull***](SWGListenerFull.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAccountListener**
```objc
-(NSURLSessionTask*) deleteAccountListenerWithAccountId: (NSNumber*) accountId
    listenerId: (NSNumber*) listenerId
        completionHandler: (void (^)(SWGDeleteEntry* output, NSError* error)) handler;
```

Delete an individual event listener.

Delete an individual event listener. See Account Listeners for more info on the properties. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the Extension level Delete Listener API with the following definition: DELETE https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/listeners/:listener_id

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* accountId = @56; // Account ID
NSNumber* listenerId = @56; // Listener ID

SWGListenersApi*apiInstance = [[SWGListenersApi alloc] init];

// Delete an individual event listener.
[apiInstance deleteAccountListenerWithAccountId:accountId
              listenerId:listenerId
          completionHandler: ^(SWGDeleteEntry* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGListenersApi->deleteAccountListener: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSNumber***| Account ID | 
 **listenerId** | **NSNumber***| Listener ID | 

### Return type

[**SWGDeleteEntry***](SWGDeleteEntry.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountListener**
```objc
-(NSURLSessionTask*) getAccountListenerWithAccountId: (NSNumber*) accountId
    listenerId: (NSNumber*) listenerId
        completionHandler: (void (^)(SWGListenerFull* output, NSError* error)) handler;
```

Show details of an individual listener.

Show details of an individual event listener. See Account Listeners for more info on the properties. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the Extension level Get Listener API with the following definition: GET https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/listeners/:listener_id

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* accountId = @56; // Account ID
NSNumber* listenerId = @56; // Listener ID

SWGListenersApi*apiInstance = [[SWGListenersApi alloc] init];

// Show details of an individual listener.
[apiInstance getAccountListenerWithAccountId:accountId
              listenerId:listenerId
          completionHandler: ^(SWGListenerFull* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGListenersApi->getAccountListener: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSNumber***| Account ID | 
 **listenerId** | **NSNumber***| Listener ID | 

### Return type

[**SWGListenerFull***](SWGListenerFull.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAccountListeners**
```objc
-(NSURLSessionTask*) listAccountListenersWithAccountId: (NSNumber*) accountId
    filtersId: (NSArray<NSString*>*) filtersId
    sortId: (NSString*) sortId
    limit: (NSNumber*) limit
    offset: (NSNumber*) offset
    fields: (NSString*) fields
        completionHandler: (void (^)(SWGListListeners* output, NSError* error)) handler;
```

Get a list of listeners for an account.

Get a list of listeners for an account. See Account Listeners for more info on the properties. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the Extension level List Listeners API with the following definition: GET https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/listeners

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* accountId = @56; // Account ID
NSArray<NSString*>* filtersId = @[@"filtersId_example"]; // ID filter (optional)
NSString* sortId = @"sortId_example"; // ID sorting (optional)
NSNumber* limit = @56; // Max results (optional)
NSNumber* offset = @56; // Results to skip (optional)
NSString* fields = @"fields_example"; // Field set (optional)

SWGListenersApi*apiInstance = [[SWGListenersApi alloc] init];

// Get a list of listeners for an account.
[apiInstance listAccountListenersWithAccountId:accountId
              filtersId:filtersId
              sortId:sortId
              limit:limit
              offset:offset
              fields:fields
          completionHandler: ^(SWGListListeners* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGListenersApi->listAccountListeners: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSNumber***| Account ID | 
 **filtersId** | [**NSArray&lt;NSString*&gt;***](NSString*.md)| ID filter | [optional] 
 **sortId** | **NSString***| ID sorting | [optional] 
 **limit** | **NSNumber***| Max results | [optional] 
 **offset** | **NSNumber***| Results to skip | [optional] 
 **fields** | **NSString***| Field set | [optional] 

### Return type

[**SWGListListeners***](SWGListListeners.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **replaceAccountListener**
```objc
-(NSURLSessionTask*) replaceAccountListenerWithAccountId: (NSNumber*) accountId
    listenerId: (NSNumber*) listenerId
    data: (SWGCreateListenerParams*) data
        completionHandler: (void (^)(SWGListenerFull* output, NSError* error)) handler;
```

Update the settings of an individual event listener.

Update the settings of an individual event listener. See Event Listeners for more detail. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the Extension level Replace Listener API with the following definition: PUT https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/listeners/:listener_id

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* accountId = @56; // Account ID
NSNumber* listenerId = @56; // Listener ID
SWGCreateListenerParams* data = [[SWGCreateListenerParams alloc] init]; // Account Listeners Data (optional)

SWGListenersApi*apiInstance = [[SWGListenersApi alloc] init];

// Update the settings of an individual event listener.
[apiInstance replaceAccountListenerWithAccountId:accountId
              listenerId:listenerId
              data:data
          completionHandler: ^(SWGListenerFull* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGListenersApi->replaceAccountListener: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSNumber***| Account ID | 
 **listenerId** | **NSNumber***| Listener ID | 
 **data** | [**SWGCreateListenerParams***](SWGCreateListenerParams.md)| Account Listeners Data | [optional] 

### Return type

[**SWGListenerFull***](SWGListenerFull.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

