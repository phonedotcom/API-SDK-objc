#import "SWGVoicemailApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGApiClient.h"
#import "SWGListVoicemail.h"
#import "SWGPatchVoicemailParams.h"
#import "SWGVoicemailFull.h"


@interface SWGVoicemailApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation SWGVoicemailApi

NSString* kSWGVoicemailApiErrorDomain = @"SWGVoicemailApiErrorDomain";
NSInteger kSWGVoicemailApiMissingParamErrorCode = 234513;

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
/// This service shows the details of an individual voicemail.
/// This service shows the details of an individual voicemail. See Intro to Voicemail for more info on the properties. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the Get Voicemail API with the following definition: GET https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/voicemail/:voicemail_id
///  @param accountId Account ID 
///
///  @param voicemailId Voicemail ID 
///
///  @returns SWGVoicemailFull*
///
-(NSURLSessionTask*) getAccountVoicemailWithAccountId: (NSNumber*) accountId
    voicemailId: (NSString*) voicemailId
    completionHandler: (void (^)(SWGVoicemailFull* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kSWGVoicemailApiErrorDomain code:kSWGVoicemailApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'voicemailId' is set
    if (voicemailId == nil) {
        NSParameterAssert(voicemailId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"voicemailId"] };
            NSError* error = [NSError errorWithDomain:kSWGVoicemailApiErrorDomain code:kSWGVoicemailApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/accounts/{account_id}/voicemail/{voicemail_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"account_id"] = accountId;
    }
    if (voicemailId != nil) {
        pathParams[@"voicemail_id"] = voicemailId;
    }

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
                              responseType: @"SWGVoicemailFull*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGVoicemailFull*)data, error);
                                }
                            }];
}

///
/// Get a list of voicemail messages for an account.
/// Get a list of voicemail messages for an account. See Intro to Voicemail for more info on the properties. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the List Voicemail API with the following definition: GET https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/voicemail
///  @param accountId Account ID 
///
///  @param filtersId ID filter (optional)
///
///  @param filtersFrom Caller ID filter (optional)
///
///  @param filtersTo Callee ID filter, the E.164 phone number to send the SMS TO. Note you must encode the + as %2B (optional)
///
///  @param filtersIsNew  (optional)
///
///  @param filtersCreatedAt Date string representing the UTC time that sms was created (optional)
///
///  @param filtersExtension Extension filter (optional)
///
///  @param sortId ID sorting (optional)
///
///  @param sortCreatedAt Sort by the UTC time that voicemail was created (optional)
///
///  @param limit Max results (optional)
///
///  @param offset Results to skip (optional)
///
///  @param fields Field set (optional)
///
///  @returns SWGListVoicemail*
///
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
    completionHandler: (void (^)(SWGListVoicemail* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kSWGVoicemailApiErrorDomain code:kSWGVoicemailApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/accounts/{account_id}/voicemail"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"account_id"] = accountId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (filtersId != nil) {
        queryParams[@"filters[id]"] = [[SWGQueryParamCollection alloc] initWithValuesAndFormat: filtersId format: @"multi"];
        
    }
    if (filtersFrom != nil) {
        queryParams[@"filters[from]"] = filtersFrom;
    }
    if (filtersTo != nil) {
        queryParams[@"filters[to]"] = filtersTo;
    }
    if (filtersIsNew != nil) {
        queryParams[@"filters[is_new]"] = filtersIsNew;
    }
    if (filtersCreatedAt != nil) {
        queryParams[@"filters[created_at]"] = filtersCreatedAt;
    }
    if (filtersExtension != nil) {
        queryParams[@"filters[extension]"] = [[SWGQueryParamCollection alloc] initWithValuesAndFormat: filtersExtension format: @"multi"];
        
    }
    if (sortId != nil) {
        queryParams[@"sort[id]"] = sortId;
    }
    if (sortCreatedAt != nil) {
        queryParams[@"sort[created_at]"] = sortCreatedAt;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (offset != nil) {
        queryParams[@"offset"] = offset;
    }
    if (fields != nil) {
        queryParams[@"fields"] = fields;
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
                              responseType: @"SWGListVoicemail*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGListVoicemail*)data, error);
                                }
                            }];
}

///
/// Update the is_new parameter in a voicemail record.
/// Update the is_new parameter in a voicemail record. See Account Voicemail for more info on the properties. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the Patch Voicemail API with the following definition: PATCH https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/voicemail/:voicemail_id
///  @param accountId Account ID 
///
///  @param voicemailId Voicemail ID 
///
///  @param data Payment data (optional)
///
///  @returns SWGVoicemailFull*
///
-(NSURLSessionTask*) patchAccountVoicemailWithAccountId: (NSNumber*) accountId
    voicemailId: (NSString*) voicemailId
    data: (SWGPatchVoicemailParams*) data
    completionHandler: (void (^)(SWGVoicemailFull* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kSWGVoicemailApiErrorDomain code:kSWGVoicemailApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'voicemailId' is set
    if (voicemailId == nil) {
        NSParameterAssert(voicemailId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"voicemailId"] };
            NSError* error = [NSError errorWithDomain:kSWGVoicemailApiErrorDomain code:kSWGVoicemailApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/accounts/{account_id}/voicemail/{voicemail_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"account_id"] = accountId;
    }
    if (voicemailId != nil) {
        pathParams[@"voicemail_id"] = voicemailId;
    }

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
                                    method: @"PATCH"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGVoicemailFull*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGVoicemailFull*)data, error);
                                }
                            }];
}



@end
