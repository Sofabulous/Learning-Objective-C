//
//  AllWeatherRadial.h
//  CarParts-Split
//
//  Created by yukun on 2018/1/25.
//  Copyright © 2018年 SouthWest University-yukun. All rights reserved.
//

#import "Tire.h"

@interface AllWeatherRadial : Tire
{
    float rainHandling;
    float snowHandling;
}
- (void) setRainHandling: (float) rainHandling;
- (float) rainHandling;
- (void) setSnowHandling: (float) snowHandling;
- (float) snowHandling;
@end // AllWeatherRadial
