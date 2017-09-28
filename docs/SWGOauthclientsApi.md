# SWGOauthclientsApi

All URIs are relative to *https://api.phone.com/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteAccountOauthClient**](SWGOauthclientsApi.md#deleteaccountoauthclient) | **DELETE** /accounts/{account_id}/oauth/clients/{client_id} | Delete an individual OAuth client.
[**getAccountOauthClient**](SWGOauthclientsApi.md#getaccountoauthclient) | **GET** /accounts/{account_id}/oauth/clients/{client_id} | Show details of an individual OAuth client.
[**listAccountOauthClients**](SWGOauthclientsApi.md#listaccountoauthclients) | **GET** /accounts/{account_id}/oauth/clients | Get a list of OAuth clients for an account.


# **deleteAccountOauthClient**
```objc
-(NSURLSessionTask*) deleteAccountOauthClientWithAccountId: (NSNumber*) accountId
    clientId: (NSNumber*) clientId
        completionHandler: (void (^)(SWGDeleteEntry* output, NSError* error)) handler;
```

Delete an individual OAuth client.

Delete an individual OAuth client. See Account OAuth Clients for more info on the properties.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* accountId = @56; // Account ID
NSNumber* clientId = @56; // Client ID

SWGOauthclientsApi*apiInstance = [[SWGOauthclientsApi alloc] init];

// Delete an individual OAuth client.
[apiInstance deleteAccountOauthClientWithAccountId:accountId
              clientId:clientId
          completionHandler: ^(SWGDeleteEntry* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGOauthclientsApi->deleteAccountOauthClient: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSNumber***| Account ID | 
 **clientId** | **NSNumber***| Client ID | 

### Return type

[**SWGDeleteEntry***](SWGDeleteEntry.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountOauthClient**
```objc
-(NSURLSessionTask*) getAccountOauthClientWithAccountId: (NSNumber*) accountId
    clientId: (NSNumber*) clientId
        completionHandler: (void (^)(SWGOauthClientFull* output, NSError* error)) handler;
```

Show details of an individual OAuth client.

Show details of an individual OAuth client. See Account OAuth Clients for more info on the properties.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* accountId = @56; // Account ID
NSNumber* clientId = @56; // Client ID

SWGOauthclientsApi*apiInstance = [[SWGOauthclientsApi alloc] init];

// Show details of an individual OAuth client.
[apiInstance getAccountOauthClientWithAccountId:accountId
              clientId:clientId
          completionHandler: ^(SWGOauthClientFull* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGOauthclientsApi->getAccountOauthClient: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSNumber***| Account ID | 
 **clientId** | **NSNumber***| Client ID | 

### Return type

[**SWGOauthClientFull***](SWGOauthClientFull.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAccountOauthClients**
```objc
-(NSURLSessionTask*) listAccountOauthClientsWithAccountId: (NSNumber*) accountId
    filtersId: (NSArray<NSString*>*) filtersId
    sortId: (NSString*) sortId
    limit: (NSNumber*) limit
    offset: (NSNumber*) offset
    fields: (NSString*) fields
        completionHandler: (void (^)(SWGListOauthClients* output, NSError* error)) handler;
```

Get a list of OAuth clients for an account.

Get a list of OAuth clients for an account. See Account OAuth Clients for more info on the properties.

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

SWGOauthclientsApi*apiInstance = [[SWGOauthclientsApi alloc] init];

// Get a list of OAuth clients for an account.
[apiInstance listAccountOauthClientsWithAccountId:accountId
              filtersId:filtersId
              sortId:sortId
              limit:limit
              offset:offset
              fields:fields
          completionHandler: ^(SWGListOauthClients* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGOauthclientsApi->listAccountOauthClients: %@", error);
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

[**SWGListOauthClients***](SWGListOauthClients.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

