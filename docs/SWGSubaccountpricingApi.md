# SWGSubaccountpricingApi

All URIs are relative to *https://api.phone.com/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAccountSubaccountPricing**](SWGSubaccountpricingApi.md#createaccountsubaccountpricing) | **POST** /accounts/{account_id}/subaccounts/{subaccount_id}/pricing | Add a pricing plan to a subaccount.
[**deleteAccountSubaccountPricing**](SWGSubaccountpricingApi.md#deleteaccountsubaccountpricing) | **DELETE** /accounts/{account_id}/subaccounts/{subaccount_id}/pricing/{pricing_id} | Delete a pricing plan from a subaccount.
[**getAccountSubaccountPricing**](SWGSubaccountpricingApi.md#getaccountsubaccountpricing) | **GET** /accounts/{account_id}/subaccounts/{subaccount_id}/pricing/{pricing_id} | Get the details of a pricing plan for a subaccount.
[**listAccountSubaccountPricing**](SWGSubaccountpricingApi.md#listaccountsubaccountpricing) | **GET** /accounts/{account_id}/subaccounts/{subaccount_id}/pricing | Get a list of pricing plans for a subaccount.


# **createAccountSubaccountPricing**
```objc
-(NSURLSessionTask*) createAccountSubaccountPricingWithAccountId: (NSNumber*) accountId
    subaccountId: (NSNumber*) subaccountId
    data: (SWGCreatePricingParams*) data
        completionHandler: (void (^)(SWGPricingFull* output, NSError* error)) handler;
```

Add a pricing plan to a subaccount.

Add a pricing plan to a subaccount. See Account Subaccount Pricing for more info on the properties.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* accountId = @56; // Account ID
NSNumber* subaccountId = @56; // Subaccount ID
SWGCreatePricingParams* data = [[SWGCreatePricingParams alloc] init]; // Subaccount pricing data

SWGSubaccountpricingApi*apiInstance = [[SWGSubaccountpricingApi alloc] init];

// Add a pricing plan to a subaccount.
[apiInstance createAccountSubaccountPricingWithAccountId:accountId
              subaccountId:subaccountId
              data:data
          completionHandler: ^(SWGPricingFull* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSubaccountpricingApi->createAccountSubaccountPricing: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSNumber***| Account ID | 
 **subaccountId** | **NSNumber***| Subaccount ID | 
 **data** | [**SWGCreatePricingParams***](SWGCreatePricingParams.md)| Subaccount pricing data | 

### Return type

[**SWGPricingFull***](SWGPricingFull.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAccountSubaccountPricing**
```objc
-(NSURLSessionTask*) deleteAccountSubaccountPricingWithAccountId: (NSNumber*) accountId
    subaccountId: (NSNumber*) subaccountId
    pricingId: (NSNumber*) pricingId
        completionHandler: (void (^)(SWGDeleteEntry* output, NSError* error)) handler;
```

Delete a pricing plan from a subaccount.

Delete a pricing plan from a subaccount. See Account Subaccount Pricing for more info on the properties.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* accountId = @56; // Account ID
NSNumber* subaccountId = @56; // Subaccount ID
NSNumber* pricingId = @56; // Pricing Object ID

SWGSubaccountpricingApi*apiInstance = [[SWGSubaccountpricingApi alloc] init];

// Delete a pricing plan from a subaccount.
[apiInstance deleteAccountSubaccountPricingWithAccountId:accountId
              subaccountId:subaccountId
              pricingId:pricingId
          completionHandler: ^(SWGDeleteEntry* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSubaccountpricingApi->deleteAccountSubaccountPricing: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSNumber***| Account ID | 
 **subaccountId** | **NSNumber***| Subaccount ID | 
 **pricingId** | **NSNumber***| Pricing Object ID | 

### Return type

[**SWGDeleteEntry***](SWGDeleteEntry.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountSubaccountPricing**
```objc
-(NSURLSessionTask*) getAccountSubaccountPricingWithAccountId: (NSNumber*) accountId
    subaccountId: (NSNumber*) subaccountId
    pricingId: (NSNumber*) pricingId
        completionHandler: (void (^)(SWGPricingFull* output, NSError* error)) handler;
```

Get the details of a pricing plan for a subaccount.

Get the details of a pricing plan for a subaccount. See Account Subaccount Pricing for more info on the properties.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* accountId = @56; // Account ID
NSNumber* subaccountId = @56; // Subaccount ID
NSNumber* pricingId = @56; // Pricing Object ID

SWGSubaccountpricingApi*apiInstance = [[SWGSubaccountpricingApi alloc] init];

// Get the details of a pricing plan for a subaccount.
[apiInstance getAccountSubaccountPricingWithAccountId:accountId
              subaccountId:subaccountId
              pricingId:pricingId
          completionHandler: ^(SWGPricingFull* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSubaccountpricingApi->getAccountSubaccountPricing: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSNumber***| Account ID | 
 **subaccountId** | **NSNumber***| Subaccount ID | 
 **pricingId** | **NSNumber***| Pricing Object ID | 

### Return type

[**SWGPricingFull***](SWGPricingFull.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAccountSubaccountPricing**
```objc
-(NSURLSessionTask*) listAccountSubaccountPricingWithAccountId: (NSNumber*) accountId
    subaccountId: (NSNumber*) subaccountId
    filtersId: (NSArray<NSString*>*) filtersId
    sortId: (NSString*) sortId
    limit: (NSNumber*) limit
    offset: (NSNumber*) offset
    fields: (NSString*) fields
        completionHandler: (void (^)(SWGListPricings* output, NSError* error)) handler;
```

Get a list of pricing plans for a subaccount.

Get a list of pricing plans for a subaccount. See Account Subaccount Pricing for more info on the properties.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* accountId = @56; // Account ID
NSNumber* subaccountId = @56; // Subaccount ID
NSArray<NSString*>* filtersId = @[@"filtersId_example"]; // ID filter (optional)
NSString* sortId = @"sortId_example"; // ID sorting (optional)
NSNumber* limit = @56; // Max results (optional)
NSNumber* offset = @56; // Results to skip (optional)
NSString* fields = @"fields_example"; // Field set (optional)

SWGSubaccountpricingApi*apiInstance = [[SWGSubaccountpricingApi alloc] init];

// Get a list of pricing plans for a subaccount.
[apiInstance listAccountSubaccountPricingWithAccountId:accountId
              subaccountId:subaccountId
              filtersId:filtersId
              sortId:sortId
              limit:limit
              offset:offset
              fields:fields
          completionHandler: ^(SWGListPricings* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSubaccountpricingApi->listAccountSubaccountPricing: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSNumber***| Account ID | 
 **subaccountId** | **NSNumber***| Subaccount ID | 
 **filtersId** | [**NSArray&lt;NSString*&gt;***](NSString*.md)| ID filter | [optional] 
 **sortId** | **NSString***| ID sorting | [optional] 
 **limit** | **NSNumber***| Max results | [optional] 
 **offset** | **NSNumber***| Results to skip | [optional] 
 **fields** | **NSString***| Field set | [optional] 

### Return type

[**SWGListPricings***](SWGListPricings.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

