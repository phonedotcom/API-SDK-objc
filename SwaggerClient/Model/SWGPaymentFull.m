#import "SWGPaymentFull.h"

@implementation SWGPaymentFull

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"voipId": @"voip_id", @"status": @"status", @"nickname": @"nickname", @"type": @"type", @"createdAt": @"created_at", @"contact": @"contact", @"declineCount": @"decline_count", @"nextChargeDate": @"next_charge_date", @"updatedAt": @"updated_at", @"ccToken": @"cc_token", @"ccNumber": @"cc_number", @"ccExp": @"cc_exp" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"voipId", @"status", @"nickname", @"type", @"createdAt", @"contact", @"declineCount", @"nextChargeDate", @"updatedAt", @"ccToken", @"ccNumber", @"ccExp"];
  return [optionalProperties containsObject:propertyName];
}

@end
