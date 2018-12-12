//
//  Car.h
//  CarParts-Split
//
//  Created by yukun on 2018/1/25.
//  Copyright © 2018年 SouthWest University-yukun. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Tire;
@class Engine;

@interface Car : NSObject
{
    Engine *engine;
    NSMutableArray *tires;
}
- (void) setEngine: (Engine*) newEngine;
- (Engine *) engine;

- (void) setTire: (Tire *) tire atIndex:(int) index;
- (Tire *) tireAtIndex: (int) index;

- (void) print;

@end // Car
