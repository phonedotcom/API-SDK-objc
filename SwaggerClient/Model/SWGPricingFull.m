#import "SWGPricingFull.h"

@implementation SWGPricingFull

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"pricing": @"pricing", @"voipId": @"voip_id", @"reason": @"reason", @"who": @"who", @"expireDate": @"expire_date" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"pricing", @"voipId", @"reason", @"who", @"expireDate"];
  return [optionalProperties containsObject:propertyName];
}

@end
