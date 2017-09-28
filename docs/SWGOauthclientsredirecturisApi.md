# SWGOauthclientsredirecturisApi

All URIs are relative to *https://api.phone.com/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAccountOauthClientsRedirectUri**](SWGOauthclientsredirecturisApi.md#createaccountoauthclientsredirecturi) | **POST** /accounts/{account_id}/oauth/clients/{client_id}/redirect-uris | Create an OAuth Client Redirect URI record.
[**deleteAccountOauthClientsRedirectUri**](SWGOauthclientsredirecturisApi.md#deleteaccountoauthclientsredirecturi) | **DELETE** /accounts/{account_id}/oauth/clients/{client_id}/redirect-uris/{uri_id} | Delete an OAuth Client Redirect URI record.
[**getAccountOauthClientsRedirectUri**](SWGOauthclientsredirecturisApi.md#getaccountoauthclientsredirecturi) | **GET** /accounts/{account_id}/oauth/clients/{client_id}/redirect-uris/{uri_id} | Get details of an OAuth Client Redirect URI record.
[**listAccountOauthClientsRedirectUris**](SWGOauthclientsredirecturisApi.md#listaccountoauthclientsredirecturis) | **GET** /accounts/{account_id}/oauth/clients/{client_id}/redirect-uris | Get a list of OAuth Client Redirect URIs for an account.


# **createAccountOauthClientsRedirectUri**
```objc
-(NSURLSessionTask*) createAccountOauthClientsRedirectUriWithAccountId: (NSNumber*) accountId
    clientId: (NSNumber*) clientId
    data: (SWGCreateRedirectUriParams*) data
        completionHandler: (void (^)(SWGOauthClientRedirectUriFull* output, NSError* error)) handler;
```

Create an OAuth Client Redirect URI record.

Create an OAuth Client Redirect URI record.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* accountId = @56; // Account ID
NSNumber* clientId = @56; // Client ID
SWGCreateRedirectUriParams* data = [[SWGCreateRedirectUriParams alloc] init]; // Redirect Uri data (optional)

SWGOauthclientsredirecturisApi*apiInstance = [[SWGOauthclientsredirecturisApi alloc] init];

// Create an OAuth Client Redirect URI record.
[apiInstance createAccountOauthClientsRedirectUriWithAccountId:accountId
              clientId:clientId
              data:data
          completionHandler: ^(SWGOauthClientRedirectUriFull* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGOauthclientsredirecturisApi->createAccountOauthClientsRedirectUri: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSNumber***| Account ID | 
 **clientId** | **NSNumber***| Client ID | 
 **data** | [**SWGCreateRedirectUriParams***](SWGCreateRedirectUriParams.md)| Redirect Uri data | [optional] 

### Return type

[**SWGOauthClientRedirectUriFull***](SWGOauthClientRedirectUriFull.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAccountOauthClientsRedirectUri**
```objc
-(NSURLSessionTask*) deleteAccountOauthClientsRedirectUriWithAccountId: (NSNumber*) accountId
    clientId: (NSNumber*) clientId
    uriId: (NSNumber*) uriId
        completionHandler: (void (^)(SWGDeleteEntry* output, NSError* error)) handler;
```

Delete an OAuth Client Redirect URI record.

Delete an OAuth Client Redirect URI record.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* accountId = @56; // Account ID
NSNumber* clientId = @56; // Client ID
NSNumber* uriId = @56; // Redirect URI ID

SWGOauthclientsredirecturisApi*apiInstance = [[SWGOauthclientsredirecturisApi alloc] init];

// Delete an OAuth Client Redirect URI record.
[apiInstance deleteAccountOauthClientsRedirectUriWithAccountId:accountId
              clientId:clientId
              uriId:uriId
          completionHandler: ^(SWGDeleteEntry* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGOauthclientsredirecturisApi->deleteAccountOauthClientsRedirectUri: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSNumber***| Account ID | 
 **clientId** | **NSNumber***| Client ID | 
 **uriId** | **NSNumber***| Redirect URI ID | 

### Return type

[**SWGDeleteEntry***](SWGDeleteEntry.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountOauthClientsRedirectUri**
```objc
-(NSURLSessionTask*) getAccountOauthClientsRedirectUriWithAccountId: (NSNumber*) accountId
    clientId: (NSNumber*) clientId
    uriId: (NSNumber*) uriId
        completionHandler: (void (^)(SWGOauthClientRedirectUriFull* output, NSError* error)) handler;
```

Get details of an OAuth Client Redirect URI record.

Get details of an OAuth Client Redirect URI record.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* accountId = @56; // Account ID
NSNumber* clientId = @56; // Client ID
NSNumber* uriId = @56; // Redirect URI ID

SWGOauthclientsredirecturisApi*apiInstance = [[SWGOauthclientsredirecturisApi alloc] init];

// Get details of an OAuth Client Redirect URI record.
[apiInstance getAccountOauthClientsRedirectUriWithAccountId:accountId
              clientId:clientId
              uriId:uriId
          completionHandler: ^(SWGOauthClientRedirectUriFull* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGOauthclientsredirecturisApi->getAccountOauthClientsRedirectUri: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSNumber***| Account ID | 
 **clientId** | **NSNumber***| Client ID | 
 **uriId** | **NSNumber***| Redirect URI ID | 

### Return type

[**SWGOauthClientRedirectUriFull***](SWGOauthClientRedirectUriFull.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAccountOauthClientsRedirectUris**
```objc
-(NSURLSessionTask*) listAccountOauthClientsRedirectUrisWithAccountId: (NSNumber*) accountId
    clientId: (NSNumber*) clientId
    filtersId: (NSArray<NSString*>*) filtersId
    sortId: (NSString*) sortId
    limit: (NSNumber*) limit
    offset: (NSNumber*) offset
    fields: (NSString*) fields
        completionHandler: (void (^)(SWGListOauthClientsRedirectUris* output, NSError* error)) handler;
```

Get a list of OAuth Client Redirect URIs for an account.

Get a list of OAuth Client Redirect URIs for an account.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* accountId = @56; // Account ID
NSNumber* clientId = @56; // Client ID
NSArray<NSString*>* filtersId = @[@"filtersId_example"]; // ID filter (optional)
NSString* sortId = @"sortId_example"; // ID sorting (optional)
NSNumber* limit = @56; // Max results (optional)
NSNumber* offset = @56; // Results to skip (optional)
NSString* fields = @"fields_example"; // Field set (optional)

SWGOauthclientsredirecturisApi*apiInstance = [[SWGOauthclientsredirecturisApi alloc] init];

// Get a list of OAuth Client Redirect URIs for an account.
[apiInstance listAccountOauthClientsRedirectUrisWithAccountId:accountId
              clientId:clientId
              filtersId:filtersId
              sortId:sortId
              limit:limit
              offset:offset
              fields:fields
          completionHandler: ^(SWGListOauthClientsRedirectUris* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGOauthclientsredirecturisApi->listAccountOauthClientsRedirectUris: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSNumber***| Account ID | 
 **clientId** | **NSNumber***| Client ID | 
 **filtersId** | [**NSArray&lt;NSString*&gt;***](NSString*.md)| ID filter | [optional] 
 **sortId** | **NSString***| ID sorting | [optional] 
 **limit** | **NSNumber***| Max results | [optional] 
 **offset** | **NSNumber***| Results to skip | [optional] 
 **fields** | **NSString***| Field set | [optional] 

### Return type

[**SWGListOauthClientsRedirectUris***](SWGListOauthClientsRedirectUris.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

