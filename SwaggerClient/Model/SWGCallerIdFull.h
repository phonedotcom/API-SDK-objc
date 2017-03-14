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




@protocol SWGCallerIdFull
@end

@interface SWGCallerIdFull : SWGObject

/* Phone number, in E.164 format [optional]
 */
@property(nonatomic) NSString* number;
/* Name you have supplied for this number [optional]
 */
@property(nonatomic) NSString* name;
/* Type of Caller ID. account means this number is registered to your account, and extra refers to extra numbers which you have authorized, which are not managed under Phone.com. [optional]
 */
@property(nonatomic) NSString* type;

@end