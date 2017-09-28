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


#import "SWGGreetingInput.h"
#import "SWGNotification.h"


@protocol SWGVoicemailInput
@end

@interface SWGVoicemailInput : SWGObject

/* Whether voicemail is enabled. Boolean. [optional]
 */
@property(nonatomic) NSString* enabled;
/* Password for accessing voicemail box. Must be digits only. [optional]
 */
@property(nonatomic) NSString* password;

@property(nonatomic) SWGGreetingInput* greeting;
/* If notification emails are being used, this defines the format of the audio attachments. Can be \"wav\" for WAV format, \"mp3\" for MP3 format, or NULL to disable attachments. [optional]
 */
@property(nonatomic) NSString* attachments;
/* Voicemail Notifications Object. See below for details. Can be set to NULL to disable notifications. [optional]
 */
@property(nonatomic) SWGNotification* notifications;
/* Type of voicemail transcription to use. Can be \"human\" for high-quality manual transcriptions by human operators, \"automated\" for machine-generated transcriptions, or NULL to omit trancriptions. Changing this option will affect your monthly bill. Please see our Control Panel or contact Customer Service for details. [optional]
 */
@property(nonatomic) NSString* transcription;

@end