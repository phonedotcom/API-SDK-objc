# SWGOauthApi

All URIs are relative to *https://api.phone.com/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createOauthAccessToken**](SWGOauthApi.md#createoauthaccesstoken) | **POST** /oauth/access-token | To create an access token via the /oauth/access-token API, an API user may choose any one of the grant types it supports: Authorization Code Grant, Client Credential Grant, Password Credential Grant or Refresh Token Grant.
[**createOauthAuthorization**](SWGOauthApi.md#createoauthauthorization) | **GET** /oauth/authorization | Create Authorization Code or Access Token.
[**getOauthAccessToken**](SWGOauthApi.md#getoauthaccesstoken) | **GET** /oauth/access-token | Retrieve details of an access token, such as scope, expiration and extension ID.


# **createOauthAccessToken**
```objc
-(NSURLSessionTask*) createOauthAccessTokenWithData: (SWGCreateOauthParams*) data
        completionHandler: (void (^)(SWGOauthAccessToken* output, NSError* error)) handler;
```

To create an access token via the /oauth/access-token API, an API user may choose any one of the grant types it supports: Authorization Code Grant, Client Credential Grant, Password Credential Grant or Refresh Token Grant.

To create an access token via the /oauth/access-token API, an API user may choose any one of the grant types it supports: Authorization Code Grant, Client Credential Grant, Password Credential Grant or Refresh Token Grant. For Authorization Code Grant, the input parameter 'code' is generated via the Create Authorization API. NOTE: The Create Access Token API now accepts requests in query string format as well as JSON body format. See OAuth for more details on how to obtain client id and client secret to create an access token at real time.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


SWGCreateOauthParams* data = [[SWGCreateOauthParams alloc] init]; // Oauth data (optional)

SWGOauthApi*apiInstance = [[SWGOauthApi alloc] init];

// To create an access token via the /oauth/access-token API, an API user may choose any one of the grant types it supports: Authorization Code Grant, Client Credential Grant, Password Credential Grant or Refresh Token Grant.
[apiInstance createOauthAccessTokenWithData:data
          completionHandler: ^(SWGOauthAccessToken* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGOauthApi->createOauthAccessToken: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**SWGCreateOauthParams***](SWGCreateOauthParams.md)| Oauth data | [optional] 

### Return type

[**SWGOauthAccessToken***](SWGOauthAccessToken.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createOauthAuthorization**
```objc
-(NSURLSessionTask*) createOauthAuthorizationWithClientId: (NSString*) clientId
    responseType: (NSString*) responseType
    scope: (NSString*) scope
    redirectUri: (NSString*) redirectUri
        completionHandler: (void (^)(NSError* error)) handler;
```

Create Authorization Code or Access Token.

Create Authorization Code or Access Token. The /oauth/authorization API supports Authorization Grant and Implicit Grant. In Authorization Grant, this API returns a code (response_type=code) for clients implemented in a browser using a scripting language such as JavaScript. Users may then use the code via the Create Access Token API to create an access token. The Implicit Grant is a simplified authorization code flow. In the implicit flow, instead of issuing the client an authorization code, the client is issued an access token (response_type=token) directly. See OAuth for more details on how to obtain client id and client secret to create authorization code access token at real time.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* clientId = @"clientId_example"; // Client ID
NSString* responseType = @"responseType_example"; // 'token' for Implicit Grant; 'code' for Authorization Code Grant
NSString* scope = @"scope_example"; // account-owner, extension-user and/or methods:ALL, separated by space (%20)
NSString* redirectUri = @"redirectUri_example"; // The URL where the response data of this API is redirected to

SWGOauthApi*apiInstance = [[SWGOauthApi alloc] init];

// Create Authorization Code or Access Token.
[apiInstance createOauthAuthorizationWithClientId:clientId
              responseType:responseType
              scope:scope
              redirectUri:redirectUri
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGOauthApi->createOauthAuthorization: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientId** | **NSString***| Client ID | 
 **responseType** | **NSString***| &#39;token&#39; for Implicit Grant; &#39;code&#39; for Authorization Code Grant | 
 **scope** | **NSString***| account-owner, extension-user and/or methods:ALL, separated by space (%20) | 
 **redirectUri** | **NSString***| The URL where the response data of this API is redirected to | 

### Return type

void (empty response body)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOauthAccessToken**
```objc
-(NSURLSessionTask*) getOauthAccessTokenWithCompletionHandler: 
        (void (^)(SWGGetOauthAccessToken* output, NSError* error)) handler;
```

Retrieve details of an access token, such as scope, expiration and extension ID.

Retrieve details of an access token, such as scope, expiration and extension ID. Voip ID will be returned as well if scope contains account-owner scope.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];



SWGOauthApi*apiInstance = [[SWGOauthApi alloc] init];

// Retrieve details of an access token, such as scope, expiration and extension ID.
[apiInstance getOauthAccessTokenWithCompletionHandler: 
          ^(SWGGetOauthAccessToken* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGOauthApi->getOauthAccessToken: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SWGGetOauthAccessToken***](SWGGetOauthAccessToken.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

