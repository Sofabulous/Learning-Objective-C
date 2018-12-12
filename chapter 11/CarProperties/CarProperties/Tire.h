//
//  Tire.h
//  CarParts-Split
//
//  Created by yukun on 2018/1/25.
//  Copyright © 2018年 SouthWest University-yukun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tire : NSObject
//{
//    float pressure;
//    float treadDepth;
//}
@property float pressure;
@property float treadDepth;
- (id) initWithPressure: (float) pressure;
- (id) initWithTreadDepth: (float) treadDepth;
- (id) initWithPressure: (float) pressure treadDepth: (float) treadDepth; // 默认返回id
//- (void) setPressure: (float) pressure;
//- (float) pressure;
//- (void) setTreadDepth: (float) treadDepth;
//- (float) treadDepth;
@end // Tire

