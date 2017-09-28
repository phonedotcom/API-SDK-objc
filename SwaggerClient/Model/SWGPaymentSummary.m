#import "SWGPaymentSummary.h"

@implementation SWGPaymentSummary

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"voipId": @"voip_id", @"status": @"status", @"nickname": @"nickname", @"type": @"type", @"createdAt": @"created_at" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"voipId", @"status", @"nickname", @"type", @"createdAt"];
  return [optionalProperties containsObject:propertyName];
}

@end
