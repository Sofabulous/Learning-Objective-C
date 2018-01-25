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
{
    Engine *engine;
    Tire *tires[4];
}

#pragma mark Engine
- (void) setEngine: (Engine *) newEngine {
    engine = newEngine;
} //setEngine
- (Engine *) engine {
    return (engine);
} // engine

#pragma mark Tire
- (void)setTire:(Tire *)tire atIndex:(int)index{
    if (index < 0 || index > 3){
        NSLog(@"bad index (%d) in \"tireAtIndex\"", index);
        exit(1);
    }
    tires[index] = tire;
} // setTire:atIndex:
- (Tire *) tireAtIndex: (int)index {
    if (index < 0 || index > 3){
        NSLog(@"bad index (%d) in \"tireAtIndex\"", index);
        exit(1);
    }
    return tires[index];
} // tireAtIndex:

- (void) print {
    NSLog(@"%@",engine);
    NSLog(@"%@",tires[0]);
    NSLog(@"%@",tires[1]);
    NSLog(@"%@",tires[2]);
    NSLog(@"%@",tires[3]);
} // print

@end // Car
