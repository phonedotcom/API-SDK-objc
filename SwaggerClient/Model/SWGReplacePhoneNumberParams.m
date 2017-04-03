#import "SWGReplacePhoneNumberParams.h"

@implementation SWGReplacePhoneNumberParams

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"route": @"route", @"name": @"name", @"blockIncoming": @"block_incoming", @"blockAnonymous": @"block_anonymous", @"callerId": @"caller_id", @"smsForwarding": @"sms_forwarding", @"poolItem": @"pool_item", @"callNotifications": @"call_notifications" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"route", @"name", @"blockIncoming", @"blockAnonymous", @"callerId", @"smsForwarding", @"poolItem", @"callNotifications"];
  return [optionalProperties containsObject:propertyName];
}

@end
