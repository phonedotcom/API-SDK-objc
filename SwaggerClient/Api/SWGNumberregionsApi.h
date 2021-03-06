#import <Foundation/Foundation.h>
#import "SWGListPhoneNumbersRegions.h"
#import "SWGApi.h"

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



@interface SWGNumberregionsApi: NSObject <SWGApi>

extern NSString* kSWGNumberregionsApiErrorDomain;
extern NSInteger kSWGNumberregionsApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(SWGApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// 
/// This service lists the quantities of available phone numbers by region.
///
/// @param filtersCountryCode Country Code filter (optional)
/// @param filtersNpa Area Code filter (North America only) (optional)
/// @param filtersNxx 2nd set of 3 digits filter (North America only) (optional)
/// @param filtersIsTollFree Toll-free status filter (optional)
/// @param filtersCity City filter (optional)
/// @param filtersProvincePostalCode State or Province filter (optional)
/// @param filtersCountryPostalCode Country filter (optional)
/// @param sortCountryCode International calling code sorting (optional)
/// @param sortNpa Area Code sorting (North America only) (optional)
/// @param sortNxx 2nd set of 3 digits sorting (North America) (optional)
/// @param sortIsTollFree Toll Free status sorting (optional)
/// @param sortCity City sorting (optional)
/// @param sortProvincePostalCode State or Province sorting (optional)
/// @param sortCountryPostalCode Country sorting (optional)
/// @param limit Max results (optional)
/// @param offset Results to skip (optional)
/// @param fields Field set (optional)
/// @param groupBy Fields to group by (supports the same set of fields as the filters and sorting) (optional)
/// 
///  code:200 message:"OK",
///  code:401 message:"Unauthorized access",
///  code:429 message:"Forbidden"
///
/// @return SWGListPhoneNumbersRegions*
-(NSURLSessionTask*) listAvailablePhoneNumberRegionsWithFiltersCountryCode: (NSArray<NSString*>*) filtersCountryCode
    filtersNpa: (NSArray<NSString*>*) filtersNpa
    filtersNxx: (NSArray<NSString*>*) filtersNxx
    filtersIsTollFree: (NSArray<NSString*>*) filtersIsTollFree
    filtersCity: (NSArray<NSString*>*) filtersCity
    filtersProvincePostalCode: (NSArray<NSString*>*) filtersProvincePostalCode
    filtersCountryPostalCode: (NSArray<NSString*>*) filtersCountryPostalCode
    sortCountryCode: (NSString*) sortCountryCode
    sortNpa: (NSString*) sortNpa
    sortNxx: (NSString*) sortNxx
    sortIsTollFree: (NSString*) sortIsTollFree
    sortCity: (NSString*) sortCity
    sortProvincePostalCode: (NSString*) sortProvincePostalCode
    sortCountryPostalCode: (NSString*) sortCountryPostalCode
    limit: (NSNumber*) limit
    offset: (NSNumber*) offset
    fields: (NSString*) fields
    groupBy: (NSArray<NSString*>*) groupBy
    completionHandler: (void (^)(SWGListPhoneNumbersRegions* output, NSError* error)) handler;



@end
