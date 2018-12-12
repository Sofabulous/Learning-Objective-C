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

@synthesize name = appellation;
@synthesize engine;

- (instancetype) init
{
    self = [super init];
    if (self) {
        //由于直接访问的name变量名称被修改，使用self.name来快速调用setName
        self.name = [[NSString alloc] initWithString:@"Car"];
        tires = [[NSMutableArray alloc] init];
        for (int i = 0; i < 4; i++) {
            [tires addObject:[NSNull null]];
        }
    }
    return self;
} // init
//#pragma mark name
//- (void)setname:(NSString *)newName {
//    [name release];
//    name = [newName copy]; // 复制name变量
//} //setname
//- (NSString *)name {
//    return name;
//} // name
//#pragma mark Engine
//- (void) setEngine: (Engine *) newEngine {
//    [newEngine retain];
//    [engine release];
//    engine = newEngine;
//    
//} //setEngine
//- (Engine *) engine {
//    return (engine);
//} // engine
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
    NSLog(@"%@ has:", self.name);
    for (int i = 0; i < 4; i++) {
        NSLog(@"%@",[tires objectAtIndex: i]);
    }
    NSLog(@"%@",engine);
} // print

- (void)dealloc
{
    [appellation release];//释放字符串的副本
    [tires release];
    [engine release];
    [super dealloc]; // 确保这是dealloc方法的最后一句
} // dealloc
@end // Car
