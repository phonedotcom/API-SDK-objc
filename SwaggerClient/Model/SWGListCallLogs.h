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


#import "SWGCallLogFull.h"
#import "SWGFilterCallLogs.h"
#import "SWGSortCallLogs.h"


@protocol SWGListCallLogs
@end

@interface SWGListCallLogs : SWGObject


@property(nonatomic) SWGFilterCallLogs* filters;

@property(nonatomic) SWGSortCallLogs* sort;

@property(nonatomic) NSNumber* total;

@property(nonatomic) NSNumber* offset;

@property(nonatomic) NSNumber* limit;

@property(nonatomic) NSArray<SWGCallLogFull>* items;

@end
