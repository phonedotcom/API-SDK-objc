#import "SWGOauthAccessToken.h"

@implementation SWGOauthAccessToken

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"accessToken": @"access_token", @"tokenType": @"token_type", @"scope": @"scope", @"refreshToken": @"refresh_token", @"expiresIn": @"expires_in" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"accessToken", @"tokenType", @"scope", @"refreshToken", @"expiresIn"];
  return [optionalProperties containsObject:propertyName];
}

@end
