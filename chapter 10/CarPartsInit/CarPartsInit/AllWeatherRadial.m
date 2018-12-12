//
//  AllWeatherRadial.m
//  CarParts-Split
//
//  Created by yukun on 2018/1/25.
//  Copyright © 2018年 SouthWest University-yukun. All rights reserved.
//

#import "AllWeatherRadial.h"

@implementation AllWeatherRadial
//重写指定初始化函数，来保持可维护性
- (id)initWithPressure:(float)p treadDepth:(float)td {
    if (self = [super initWithPressure:p treadDepth:td]) {
        rainHandling = 23.7;
        snowHandling = 42.5;
    }
    return self;
} //initWithPressure:treadDepth:
- (void) setRainHandling: (float) rh {
    rainHandling = rh;
} // setRainHandling
- (float)rainHandling{
    return rainHandling;
} // rainHandling
- (void) setSnowHandling: (float) sh {
    snowHandling = sh;
} // setSnowHandling
- (float)snowHandling {
    return snowHandling;
} // snowHandling
- (NSString *)description{
    NSString *desc;
    desc = [[NSString alloc] initWithFormat: @"AllWeatherRadial: %.1f / %.1f / %.1f / %.1f", [self pressure], [self treadDepth], [self rainHandling], [self snowHandling]];
    return desc;
} // description

@end // AllWeatherRadial
