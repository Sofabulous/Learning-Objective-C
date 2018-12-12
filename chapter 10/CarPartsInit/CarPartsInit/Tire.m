//
//  Tire.m
//  CarParts-Split
//
//  Created by yukun on 2018/1/25.
//  Copyright © 2018年 SouthWest University-yukun. All rights reserved.
//

#import "Tire.h"

@implementation Tire
- (instancetype) init
{
    self = [self initWithPressure: 34.0 treadDepth: 20.0];
    if (self) {
        pressure = 34.0; treadDepth = 20.0;
    }
    return self;
} // init
- (id)initWithPressure: (float) p {
    self = [self initWithPressure: 34.0 treadDepth: 20.0];
    if (self) {
        pressure = p;
        treadDepth = 20.0;
    }
    return self;
} // initWithPressure
- (id) initWithTreadDepth: (float) td {
    self = [self initWithPressure: 34.0 treadDepth: 20.0];
    if (self) {
        pressure = 34.0;
        treadDepth = td;
    }
    return self;
} // initWithTreadDepth
- (id) initWithPressure: (float) p treadDepth: (float) td {
    self = [super init];
    if (self) {
        pressure = p;
        treadDepth = td;
    }
    return self;
} //initWithPressure:treadDepth:
- (void) setPressure: (float) p
{
    pressure = p;
} // setPressure
- (float) pressure
{
    return pressure;
} // pressure
- (void) setTreadDepth: (float) td
{
    treadDepth = td;
} // setTreadDepth
- (float) treadDepth {
    return treadDepth;
} // treadDepth
- (NSString *) description {
    NSString *desc;
    desc = [NSString stringWithFormat:@"Tire: Pressure: %.1f TreadDepth: %.1f", pressure, treadDepth];
    return desc;
} // description
@end // Tire

