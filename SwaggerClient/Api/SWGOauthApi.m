#import "SWGOauthApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGApiClient.h"
#import "SWGCreateOauthParams.h"
#import "SWGGetOauthAccessToken.h"
#import "SWGOauthAccessToken.h"


@interface SWGOauthApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation SWGOauthApi

NSString* kSWGOauthApiErrorDomain = @"SWGOauthApiErrorDomain";
NSInteger kSWGOauthApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[SWGApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(SWGApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// To create an access token via the /oauth/access-token API, an API user may choose any one of the grant types it supports: Authorization Code Grant, Client Credential Grant, Password Credential Grant or Refresh Token Grant.
/// To create an access token via the /oauth/access-token API, an API user may choose any one of the grant types it supports: Authorization Code Grant, Client Credential Grant, Password Credential Grant or Refresh Token Grant. For Authorization Code Grant, the input parameter 'code' is generated via the Create Authorization API. NOTE: The Create Access Token API now accepts requests in query string format as well as JSON body format. See OAuth for more details on how to obtain client id and client secret to create an access token at real time.
///  @param data Oauth data (optional)
///
///  @returns SWGOauthAccessToken*
///
-(NSURLSessionTask*) createOauthAccessTokenWithData: (SWGCreateOauthParams*) data
    completionHandler: (void (^)(SWGOauthAccessToken* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/oauth/access-token"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = data;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGOauthAccessToken*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGOauthAccessToken*)data, error);
                                }
                            }];
}

///
/// Create Authorization Code or Access Token.
/// Create Authorization Code or Access Token. The /oauth/authorization API supports Authorization Grant and Implicit Grant. In Authorization Grant, this API returns a code (response_type=code) for clients implemented in a browser using a scripting language such as JavaScript. Users may then use the code via the Create Access Token API to create an access token. The Implicit Grant is a simplified authorization code flow. In the implicit flow, instead of issuing the client an authorization code, the client is issued an access token (response_type=token) directly. See OAuth for more details on how to obtain client id and client secret to create authorization code access token at real time.
///  @param clientId Client ID 
///
///  @param responseType 'token' for Implicit Grant; 'code' for Authorization Code Grant 
///
///  @param scope account-owner, extension-user and/or methods:ALL, separated by space (%20) 
///
///  @param redirectUri The URL where the response data of this API is redirected to 
///
///  @returns void
///
-(NSURLSessionTask*) createOauthAuthorizationWithClientId: (NSString*) clientId
    responseType: (NSString*) responseType
    scope: (NSString*) scope
    redirectUri: (NSString*) redirectUri
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'clientId' is set
    if (clientId == nil) {
        NSParameterAssert(clientId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"clientId"] };
            NSError* error = [NSError errorWithDomain:kSWGOauthApiErrorDomain code:kSWGOauthApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'responseType' is set
    if (responseType == nil) {
        NSParameterAssert(responseType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"responseType"] };
            NSError* error = [NSError errorWithDomain:kSWGOauthApiErrorDomain code:kSWGOauthApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'scope' is set
    if (scope == nil) {
        NSParameterAssert(scope);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"scope"] };
            NSError* error = [NSError errorWithDomain:kSWGOauthApiErrorDomain code:kSWGOauthApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'redirectUri' is set
    if (redirectUri == nil) {
        NSParameterAssert(redirectUri);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"redirectUri"] };
            NSError* error = [NSError errorWithDomain:kSWGOauthApiErrorDomain code:kSWGOauthApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/oauth/authorization"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (clientId != nil) {
        queryParams[@"client_id"] = clientId;
    }
    if (responseType != nil) {
        queryParams[@"response_type"] = responseType;
    }
    if (scope != nil) {
        queryParams[@"scope"] = scope;
    }
    if (redirectUri != nil) {
        queryParams[@"redirect_uri"] = redirectUri;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}

///
/// Retrieve details of an access token, such as scope, expiration and extension ID.
/// Retrieve details of an access token, such as scope, expiration and extension ID. Voip ID will be returned as well if scope contains account-owner scope.
///  @returns SWGGetOauthAccessToken*
///
-(NSURLSessionTask*) getOauthAccessTokenWithCompletionHandler: 
    (void (^)(SWGGetOauthAccessToken* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/oauth/access-token"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGGetOauthAccessToken*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGGetOauthAccessToken*)data, error);
                                }
                            }];
}



@end
