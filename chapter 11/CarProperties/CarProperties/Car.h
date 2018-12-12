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
//    NSString *appellation;
//    Engine *engine;
    NSMutableArray *tires;
}
//默认就是readwrite这样写是为了表明意图
@property (readwrite, copy) NSString *name;
@property (readwrite, retain) Engine *engine; 
//- (void) setname: (NSString *) newName;
//- (NSString *) name;

//- (void) setEngine: (Engine *) newEngine;
//- (Engine *) engine;

- (void) setTire: (Tire *) tire atIndex:(int) index;
- (Tire *) tireAtIndex: (int) index;

- (void) print;

@end // Car
