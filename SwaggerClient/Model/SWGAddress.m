#import "SWGAddress.h"

@implementation SWGAddress

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"line1": @"line_1", @"line2": @"line_2", @"city": @"city", @"province": @"province", @"postalCode": @"postal_code", @"country": @"country" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"line2", @"province", @"postalCode", ];
  return [optionalProperties containsObject:propertyName];
}

@end
