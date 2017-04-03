#import "SWGReplaceExtensionParams.h"

@implementation SWGReplaceExtensionParams

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"voicemail": @"voicemail", @"callNotifications": @"call_notifications", @"nameGreeting": @"name_greeting", @"name": @"name", @"timezone": @"timezone", @"includeInDirectory": @"include_in_directory", @"extension": @"extension", @"enableOutboundCalls": @"enable_outbound_calls", @"usageType": @"usage_type", @"fullName": @"full_name", @"enableCallWaiting": @"enable_call_waiting", @"callerId": @"caller_id", @"localAreaCode": @"local_area_code", @"route": @"route" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"voicemail", @"callNotifications", @"nameGreeting", @"name", @"timezone", @"includeInDirectory", @"extension", @"enableOutboundCalls", @"usageType", @"fullName", @"enableCallWaiting", @"callerId", @"localAreaCode", @"route"];
  return [optionalProperties containsObject:propertyName];
}

@end
