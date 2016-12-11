//
//  LTMSystemVersion.h
//  LTM
//
//  Created by 汪潇翔 on 11/11/2016.
//  Copyright © 2016 wangxiaoxiang. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface LTMSystemVersion : NSObject

+ (void)getMajor:(NSInteger *)major minor:(NSInteger *)minor bugFix:(NSInteger *)bugFix;

+ (BOOL)isLessThan:(NSInteger )major;

+ (BOOL)isLessThanOrEqualTo:(NSInteger )major;

+ (BOOL)isGreaterThan:(NSInteger )major;

+ (BOOL)isGreaterThanOrEqualTo:(NSInteger )major;

+ (BOOL)isEqualTo:(NSInteger )major;

#if TARGET_OS_IPHONE && TARGET_OS_IOS

+ (BOOL)isGreaterThanIOS7;
+ (BOOL)isLessThanIOS7;

+ (BOOL)isGreaterThanIOS8;
+ (BOOL)isLessThanIOS8;

+ (BOOL)isGreaterThanIOS9;
+ (BOOL)isLessThanIOS9;

+ (BOOL)isGreaterThanIOS10;
+ (BOOL)isLessThanIOS10;

#endif

#if TARGET_OS_IPHONE && TARGET_OS_TV
+ (BOOL)isGreaterThanTvOS9;
+ (BOOL)isLessThanTvOS9;

+ (BOOL)isGreaterThanTvOS10;
+ (BOOL)isLessThanTvOS10;

#endif

@end
