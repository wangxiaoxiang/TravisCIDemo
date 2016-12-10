//
//  TCIURLCoder.h
//  TravisCIDemo
//
//  Created by 汪潇翔 on 10/12/2016.
//  Copyright © 2016 汪潇翔. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TCIURLCoder : NSObject
+ (NSString *)encode:(NSString *)string;

+ (NSString *)decode:(NSString *)string;
@end
