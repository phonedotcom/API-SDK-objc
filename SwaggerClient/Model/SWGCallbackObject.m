#import "SWGCallbackObject.h"

@implementation SWGCallbackObject

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"url": @"url", @"role": @"role", @"verb": @"verb", @"username": @"username", @"password": @"password", @"timeout": @"timeout" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"url", @"role", @"verb", @"username", @"password", @"timeout"];
  return [optionalProperties containsObject:propertyName];
}

@end
