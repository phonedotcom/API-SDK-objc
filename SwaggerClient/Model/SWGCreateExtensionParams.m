#import "SWGCreateExtensionParams.h"

@implementation SWGCreateExtensionParams

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"voicemail": @"voicemail", @"callNotifications": @"call_notifications", @"callerId": @"caller_id", @"usageType": @"usage_type", @"extension": @"extension", @"includeInDirectory": @"include_in_directory", @"name": @"name", @"fullName": @"full_name", @"timezone": @"timezone", @"nameGreeting": @"name_greeting", @"localAreaCode": @"local_area_code", @"enableOutboundCalls": @"enable_outbound_calls", @"enableCallWaiting": @"enable_call_waiting" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"voicemail", @"callNotifications", @"callerId", @"usageType", @"extension", @"includeInDirectory", @"name", @"fullName", @"timezone", @"nameGreeting", @"localAreaCode", @"enableOutboundCalls", @"enableCallWaiting"];
  return [optionalProperties containsObject:propertyName];
}

@end
