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




@protocol SWGCreatePhoneNumberParams
@end

@interface SWGCreatePhoneNumberParams : SWGObject

/* Phone number [optional]
 */
@property(nonatomic) NSObject* phoneNumber;
/* Route lookup object [optional]
 */
@property(nonatomic) NSObject* route;
/* Phone Name [optional]
 */
@property(nonatomic) NSString* name;
/* Block incoming calls [optional]
 */
@property(nonatomic) NSNumber* blockIncoming;
/* Block anonymous calls [optional]
 */
@property(nonatomic) NSNumber* blockAnonymous;
/* Caller ID name [optional]
 */
@property(nonatomic) NSString* callerIdName;
/* Caller ID type [optional]
 */
@property(nonatomic) NSString* callerIdType;
/* 'application' or 'extension' [optional]
 */
@property(nonatomic) NSString* smsForwardingType;
/* Application lookup object [optional]
 */
@property(nonatomic) NSObject* smsForwardingApplication;
/* Extension lookup object [optional]
 */
@property(nonatomic) NSObject* smsForwardingExtension;
/* Call notifications for emails. Can be a single email or an array of emails [optional]
 */
@property(nonatomic) NSArray<NSString*>* callNotificationsEmails;
/* Call notification for SMS [optional]
 */
@property(nonatomic) NSString* callNotificationsSms;

@end