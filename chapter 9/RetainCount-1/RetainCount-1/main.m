//
//  main.m
//  RetainCount-1
//
//  Created by yukun on 2018/2/22.
//  Copyright © 2018年 SouthWest University-yukun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RetainTracker.h"
int main(int argc, const char * argv[])
{
    NSAutoreleasePool *pool;
    pool = [[NSAutoreleasePool alloc] init];
    
    RetainTracker *tracker = [RetainTracker new]; // new = alloc(分配控制) + init(默认初始化)
    // count 1
    
    [tracker retain]; // count: 2
    NSLog(@"%lu", [tracker retainCount]);
    
    [tracker retain]; // count: 3
    NSLog(@"%lu", [tracker retainCount]);
    
    [tracker release]; // count: 2
    NSLog (@"%lu", [tracker retainCount]);
    
    [tracker release]; // count: 1
    NSLog (@"%lu", [tracker retainCount]);
    
    [tracker retain]; // count: 2
    NSLog (@"%lu", [tracker retainCount]);
    
    [tracker autorelease]; // count: still 2
    
    [tracker release]; // count: 1
    NSLog (@"%lu", [tracker retainCount]);
    
    NSLog(@"releasing pool");
    [pool release];
    //gets nuked, sends release to tracker
    
//    [tracker release]; // count: 0, dealloc it
    
//    ???
//    NSLog (@"%lu", [tracker retainCount]);// 在释放空间之后，还能够通过retainCount，增加一个计数
    
    @autoreleasepool {
        RetainTracker *traker2;
        traker2 = [RetainTracker new]; // count: 1
        [traker2 retain]; // count: 2
        [traker2 autorelease];// count: still 2
        [traker2 release];// count: 1
        
        NSLog(@"auto releasing pool");
    }
    return 0;
}
