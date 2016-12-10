//
//  TCIURLCoder.m
//  TravisCIDemo
//
//  Created by 汪潇翔 on 10/12/2016.
//  Copyright © 2016 汪潇翔. All rights reserved.
//

#import "TCIURLCoder.h"

@implementation TCIURLCoder

+ (NSString *)decode:(NSString *)value
{
    value = [value stringByReplacingOccurrencesOfString:@"+" withString:@" "];
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
    value = [value stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
#pragma clang diagnostic pop
    return value;
}

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
+ (NSString *)encode:(NSString *)value
{
    return (__bridge_transfer NSString *)CFURLCreateStringByAddingPercentEscapes(NULL,
                                                                                 (CFStringRef)value,
                                                                                 NULL, // characters to leave unescaped
                                                                                 CFSTR(":!*();@/&?+$,='"),
                                                                                 kCFStringEncodingUTF8);
}
#pragma clang diagnostic pop

@end
