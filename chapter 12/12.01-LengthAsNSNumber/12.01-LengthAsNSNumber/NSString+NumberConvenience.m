//
//  NSString+NumberConvenience.m
//  12.01-LengthAsNSNumber
//
//  Created by yukun on 2018/3/11.
//  Copyright © 2018年 SouthWest University-yukun. All rights reserved.
//

#import "NSString+NumberConvenience.h"

@implementation NSString (NumberConvenience)
- (NSNumber *)lengthAsNumber {
    NSUInteger length = [self length];
    
    return [NSNumber numberWithUnsignedInteger:length];
    
} // lengthAsNumber
@end
