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




@protocol SWGExpressServiceCodeFull
@end

@interface SWGExpressServiceCodeFull : SWGObject

/* ID [optional]
 */
@property(nonatomic) NSNumber* _id;
/* An 8-digit number in string format [optional]
 */
@property(nonatomic) NSString* expressServiceCode;
/* UNIX time stamp representing the UTC time that the Express Service Code expires. Please note that every time this service is executed, the expire_date is set to now + 24 hours. [optional]
 */
@property(nonatomic) NSNumber* expireDate;

@end