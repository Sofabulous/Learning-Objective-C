//
//  RetainTracker.m
//  RetainCount-1
//
//  Created by yukun on 2018/2/22.
//  Copyright © 2018年 SouthWest University-yukun. All rights reserved.
//

#import "RetainTracker.h"

@implementation RetainTracker
- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"init: Retain count of %lu.",[self retainCount]); // 关闭ARC
    }
    return self;
} // init
- (void)dealloc
{
    NSLog(@"dealloc called. Bye Bye.");
    [super dealloc];
} // dealloc
@end // RetainTracker

