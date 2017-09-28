# SWGPaymentmethodsApi

All URIs are relative to *https://api.phone.com/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAccountPaymentMethod**](SWGPaymentmethodsApi.md#createaccountpaymentmethod) | **POST** /accounts/{account_id}/payment-methods | Create an individual payment method.
[**deleteAccountPaymentMethod**](SWGPaymentmethodsApi.md#deleteaccountpaymentmethod) | **DELETE** /accounts/{account_id}/payment-methods/{pm_id} | Delete an individual payment method.
[**getAccountPaymentMethod**](SWGPaymentmethodsApi.md#getaccountpaymentmethod) | **GET** /accounts/{account_id}/payment-methods/{pm_id} | Show details of an individual payment method.
[**listAccountPaymentMethods**](SWGPaymentmethodsApi.md#listaccountpaymentmethods) | **GET** /accounts/{account_id}/payment-methods | Get a list of payment methods for an account.
[**patchAccountPaymentMethod**](SWGPaymentmethodsApi.md#patchaccountpaymentmethod) | **PATCH** /accounts/{account_id}/payment-methods/{pm_id} | Replace the status of an individual payment method.


# **createAccountPaymentMethod**
```objc
-(NSURLSessionTask*) createAccountPaymentMethodWithAccountId: (NSNumber*) accountId
    data: (SWGCreatePaymentParams*) data
        completionHandler: (void (^)(SWGPaymentFull* output, NSError* error)) handler;
```

Create an individual payment method.

Create an individual payment method. See Account Payment Methods for more info on the properties.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* accountId = @56; // Account ID
SWGCreatePaymentParams* data = [[SWGCreatePaymentParams alloc] init]; // Payment data

SWGPaymentmethodsApi*apiInstance = [[SWGPaymentmethodsApi alloc] init];

// Create an individual payment method.
[apiInstance createAccountPaymentMethodWithAccountId:accountId
              data:data
          completionHandler: ^(SWGPaymentFull* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPaymentmethodsApi->createAccountPaymentMethod: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSNumber***| Account ID | 
 **data** | [**SWGCreatePaymentParams***](SWGCreatePaymentParams.md)| Payment data | 

### Return type

[**SWGPaymentFull***](SWGPaymentFull.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAccountPaymentMethod**
```objc
-(NSURLSessionTask*) deleteAccountPaymentMethodWithAccountId: (NSNumber*) accountId
    pmId: (NSNumber*) pmId
        completionHandler: (void (^)(SWGDeleteEntry* output, NSError* error)) handler;
```

Delete an individual payment method.

Delete an individual payment method. See Account Payment Methods for more info on the properties.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* accountId = @56; // Account ID
NSNumber* pmId = @56; // Payment Method ID

SWGPaymentmethodsApi*apiInstance = [[SWGPaymentmethodsApi alloc] init];

// Delete an individual payment method.
[apiInstance deleteAccountPaymentMethodWithAccountId:accountId
              pmId:pmId
          completionHandler: ^(SWGDeleteEntry* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPaymentmethodsApi->deleteAccountPaymentMethod: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSNumber***| Account ID | 
 **pmId** | **NSNumber***| Payment Method ID | 

### Return type

[**SWGDeleteEntry***](SWGDeleteEntry.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountPaymentMethod**
```objc
-(NSURLSessionTask*) getAccountPaymentMethodWithAccountId: (NSNumber*) accountId
    pmId: (NSNumber*) pmId
        completionHandler: (void (^)(SWGPaymentFull* output, NSError* error)) handler;
```

Show details of an individual payment method.

Show details of an individual payment method. See Account Payment Methods for more info on the properties.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* accountId = @56; // Account ID
NSNumber* pmId = @56; // Payment Method ID

SWGPaymentmethodsApi*apiInstance = [[SWGPaymentmethodsApi alloc] init];

// Show details of an individual payment method.
[apiInstance getAccountPaymentMethodWithAccountId:accountId
              pmId:pmId
          completionHandler: ^(SWGPaymentFull* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPaymentmethodsApi->getAccountPaymentMethod: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSNumber***| Account ID | 
 **pmId** | **NSNumber***| Payment Method ID | 

### Return type

[**SWGPaymentFull***](SWGPaymentFull.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAccountPaymentMethods**
```objc
-(NSURLSessionTask*) listAccountPaymentMethodsWithAccountId: (NSNumber*) accountId
    filtersId: (NSArray<NSString*>*) filtersId
    sortId: (NSString*) sortId
    limit: (NSNumber*) limit
    offset: (NSNumber*) offset
    fields: (NSString*) fields
        completionHandler: (void (^)(SWGListPaymentMethods* output, NSError* error)) handler;
```

Get a list of payment methods for an account.

Get a list of payment methods for an account. See Account Payment Methods for more info on the properties.

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

SWGPaymentmethodsApi*apiInstance = [[SWGPaymentmethodsApi alloc] init];

// Get a list of payment methods for an account.
[apiInstance listAccountPaymentMethodsWithAccountId:accountId
              filtersId:filtersId
              sortId:sortId
              limit:limit
              offset:offset
              fields:fields
          completionHandler: ^(SWGListPaymentMethods* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPaymentmethodsApi->listAccountPaymentMethods: %@", error);
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

[**SWGListPaymentMethods***](SWGListPaymentMethods.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchAccountPaymentMethod**
```objc
-(NSURLSessionTask*) patchAccountPaymentMethodWithAccountId: (NSNumber*) accountId
    pmId: (NSNumber*) pmId
    data: (SWGPatchPaymentParams*) data
        completionHandler: (void (^)(SWGPaymentFull* output, NSError* error)) handler;
```

Replace the status of an individual payment method.

Replace the status of an individual payment method. See Account Payment Methods for more info on the properties.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* accountId = @56; // Account ID
NSNumber* pmId = @56; // Payment Method ID
SWGPatchPaymentParams* data = [[SWGPatchPaymentParams alloc] init]; // Payment data (optional)

SWGPaymentmethodsApi*apiInstance = [[SWGPaymentmethodsApi alloc] init];

// Replace the status of an individual payment method.
[apiInstance patchAccountPaymentMethodWithAccountId:accountId
              pmId:pmId
              data:data
          completionHandler: ^(SWGPaymentFull* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPaymentmethodsApi->patchAccountPaymentMethod: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSNumber***| Account ID | 
 **pmId** | **NSNumber***| Payment Method ID | 
 **data** | [**SWGPatchPaymentParams***](SWGPatchPaymentParams.md)| Payment data | [optional] 

### Return type

[**SWGPaymentFull***](SWGPaymentFull.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

