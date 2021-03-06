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




@protocol SWGRecipient
@end

@interface SWGRecipient : SWGObject

/* Phone number that will receive the SMS message [optional]
 */
@property(nonatomic) NSString* number;
/* Indicate the status of your SMS object. May be 'sent', 'received', 'queued', 'new' ... [optional]
 */
@property(nonatomic) NSString* status;

@end
