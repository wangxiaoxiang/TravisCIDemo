//
//  LTMSystemVersion.m
//  LTM
//
//  Created by 汪潇翔 on 11/11/2016.
//  Copyright © 2016 wangxiaoxiang. All rights reserved.
//

#import "LTMSystemVersion.h"
#import <UIKit/UIDevice.h>
#import "LTMDefines.h"

static NSInteger g_LTMSystemVersionMajor = 0;
static NSInteger g_LTMSystemVersionMinor = 0;
static NSInteger g_LTMSystemVersionBugFix = 0;

#if TARGET_OS_IPHONE && TARGET_OS_IOS

static const NSInteger kLTMSystemVersionIOS7MajorNumber = 7;
static const NSInteger kLTMSystemVersionIOS8MajorNumber = 8;
static const NSInteger kLTMSystemVersionIOS9MajorNumber = 9;
static const NSInteger kLTMSystemVersionIOS10MajorNumber = 10;

#endif


#if TARGET_OS_IPHONE && TARGET_OS_TV

static const NSInteger kLTMSystemVersionTvOS9MajorNumber = 9;
static const NSInteger kLTMSystemVersionTvOS10MajorNumber = 10;

#endif

@implementation LTMSystemVersion

+ (void)initialize
{
    if (self == [LTMSystemVersion class]) {
        UIDevice *device = [UIDevice currentDevice];
        NSString *version = device.systemVersion;
        
        _LTMDevAssert(version, @"Unable to get version");
        
        NSArray *versionInfo = [version componentsSeparatedByString:@"."];
        NSUInteger length = [versionInfo count];
        _LTMDevAssert(length > 1 && length < 4,
                      @"Unparseable version %@", version);
        
        g_LTMSystemVersionMajor = [[versionInfo objectAtIndex:0] integerValue];
        _LTMDevAssert(g_LTMSystemVersionMajor != 0,
                      @"Unknown version for %@", version);
        
        g_LTMSystemVersionMinor = [[versionInfo objectAtIndex:1] integerValue];
        if (length == 3) {
            g_LTMSystemVersionBugFix = [[versionInfo objectAtIndex:2] integerValue];
        }
    }
}

+ (void)getMajor:(NSInteger*)major minor:(NSInteger*)minor bugFix:(NSInteger*)bugFix {
    if (major) {
        *major = g_LTMSystemVersionMajor;
    }
    if (minor) {
        *minor = g_LTMSystemVersionMinor;
    }
    if (bugFix) {
        *bugFix = g_LTMSystemVersionBugFix;
    }
}

+ (BOOL)isLessThan:(NSInteger )major
{
    return major < g_LTMSystemVersionMajor;
}

+ (BOOL)isLessThanOrEqualTo:(NSInteger )major
{
    return major <= g_LTMSystemVersionMajor;
}

+ (BOOL)isGreaterThan:(NSInteger )major
{
    return g_LTMSystemVersionMajor > major;
}

+ (BOOL)isGreaterThanOrEqualTo:(NSInteger )major
{
    return g_LTMSystemVersionMajor >= major;
}

+ (BOOL)isEqualTo:(NSInteger )major
{
    return g_LTMSystemVersionMajor == major;
}


#if TARGET_OS_IPHONE && TARGET_OS_IOS

+ (BOOL)isGreaterThanIOS7
{
    return [self isGreaterThan:kLTMSystemVersionIOS7MajorNumber];
}

+ (BOOL)isLessThanIOS7
{
    return [self isLessThan:kLTMSystemVersionIOS7MajorNumber];
}

+ (BOOL)isGreaterThanIOS8
{
    return [self isGreaterThan:kLTMSystemVersionIOS8MajorNumber];
}

+ (BOOL)isLessThanIOS8
{
    return [self isLessThan:kLTMSystemVersionIOS8MajorNumber];
}

+ (BOOL)isGreaterThanIOS9
{
    return [self isGreaterThan:kLTMSystemVersionIOS9MajorNumber];
}

+ (BOOL)isLessThanIOS9
{
    return [self isLessThan:kLTMSystemVersionIOS9MajorNumber];
}

+ (BOOL)isGreaterThanIOS10
{
    return [self isGreaterThan:kLTMSystemVersionIOS10MajorNumber];
}

+ (BOOL)isLessThanIOS10
{
    return [self isLessThan:kLTMSystemVersionIOS10MajorNumber];
}

#endif

#if TARGET_OS_IPHONE && TARGET_OS_TV
+ (BOOL)isGreaterThanTvOS9
{
    return [self isGreaterThan:kLTMSystemVersionTvOS9MajorNumber];
}

+ (BOOL)isLessThanTvOS9
{
    return [self isLessThan:kLTMSystemVersionTvOS9MajorNumber];
}

+ (BOOL)isGreaterThanTvOS10
{
    return [self isGreaterThan:kLTMSystemVersionTvOS10MajorNumber];
}

+ (BOOL)isLessThanTvOS10
{
    return [self isLessThan:kLTMSystemVersionTvOS10MajorNumber];
}

#endif

@end
