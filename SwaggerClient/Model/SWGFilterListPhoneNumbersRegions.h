#import <Foundation/Foundation.h>
#import "SWGObject.h"

/**
* Phone.com API
* This is a Phone.com api Swagger definition
*
* OpenAPI spec version: 1.0.0
* Contact: apisupport@phone.com
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*/




@protocol SWGFilterListPhoneNumbersRegions
@end

@interface SWGFilterListPhoneNumbersRegions : SWGObject


@property(nonatomic) NSString* countryCode;

@property(nonatomic) NSString* npa;

@property(nonatomic) NSString* nxx;

@property(nonatomic) NSString* isTollFree;

@property(nonatomic) NSString* city;

@property(nonatomic) NSString* provincePostalCode;

@property(nonatomic) NSString* countryPostalCode;

@end
