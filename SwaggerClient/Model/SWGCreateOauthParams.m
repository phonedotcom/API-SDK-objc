#import "SWGCreateOauthParams.h"

@implementation SWGCreateOauthParams

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"grantType": @"grant_type", @"clientId": @"client_id", @"clientSecret": @"client_secret", @"code": @"code", @"redirectUri": @"redirect_uri", @"scope": @"scope", @"username": @"username", @"password": @"password", @"refreshToken": @"refresh_token" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"grantType", @"clientId", @"clientSecret", @"code", @"redirectUri", @"scope", @"username", @"password", @"refreshToken"];
  return [optionalProperties containsObject:propertyName];
}

@end
