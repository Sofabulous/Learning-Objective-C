//
//  Car.m
//  CarParts-Split
//
//  Created by yukun on 2018/1/25.
//  Copyright © 2018年 SouthWest University-yukun. All rights reserved.
//

#import "Car.h"
#import "Tire.h"
#import "Engine.h"

@implementation Car
- (instancetype) init
{
    self = [super init];
    if (self) {
        tires = [[NSMutableArray alloc] init];
        for (int i = 0; i < 4; i++) {
            [tires addObject:[NSNull null]];
        }
    }
    return self;
} // init 
#pragma mark Engine
- (void) setEngine: (Engine *) newEngine {
    [newEngine retain];
    [engine release];
    engine = newEngine;
    
} //setEngine
- (Engine *) engine {
    return (engine);
} // engine
#pragma mark Tire
- (void)setTire:(Tire *)tire atIndex:(int)index{
//    if (index < 0 || index > 3){
//        NSLog(@"bad index (%d) in \"tireAtIndex\"", index);
//        exit(1);
//    }
    [tires replaceObjectAtIndex: index withObject: tire];
} // setTire:atIndex:
- (Tire *) tireAtIndex: (int)index {
//    if (index < 0 || index > 3){
//        NSLog(@"bad index (%d) in \"tireAtIndex\"", index);
//        exit(1);
//    }
    Tire *tire;
    tire = [tires objectAtIndex: index];
    return tire;
} // tireAtIndex:

- (void) print {
    for (int i = 0; i < 4; i++) {
        NSLog(@"%@",[tires objectAtIndex: i]);
    }
    NSLog(@"%@",engine);
} // print

- (void)dealloc
{
    [tires release];
    [engine release];
    [super dealloc]; // 确保这是dealloc方法的最后一句
} // dealloc
@end // Car
