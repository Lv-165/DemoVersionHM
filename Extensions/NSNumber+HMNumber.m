//
//  NSNumber+HMNumber.m
//  lv-165IOS
//
//  Created by Yurii Huber on 02.12.15.
//  Copyright © 2015 SS. All rights reserved.
//

#import "NSNumber+HMNumber.h"

@implementation NSNumber (HMNumber)

+ (instancetype)numberFromValue:(id)value {
    
    if ([value isKindOfClass:[NSNumber class]]) {
        return value;
    } else if ([value isKindOfClass:[NSNull class]]) {
        return nil;
    } else if ([value isKindOfClass:[NSString class]]) {
        return @([(NSString *)value doubleValue]);
    }
    return nil;
}

@end
