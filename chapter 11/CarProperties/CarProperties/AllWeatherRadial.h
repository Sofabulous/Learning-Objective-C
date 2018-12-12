//
//  AllWeatherRadial.h
//  CarParts-Split
//
//  Created by yukun on 2018/1/25.
//  Copyright © 2018年 SouthWest University-yukun. All rights reserved.
//

#import "Tire.h"

@interface AllWeatherRadial : Tire
//编译器会自动创建实例变量 如果不声明，则自动创建在实现文件中（而不是头文件）不能直接访问
//{
//    float rainHandling;
//    float snowHandling;
//}
//这种写法已经过时
//- (void) setRainHandling: (float) rainHandling;
//- (float) rainHandling;
//- (void) setSnowHandling: (float) snowHandling;
//- (float) snowHandling;
@property float rainHandling;
@property float snowHandling;
@end // AllWeatherRadial
