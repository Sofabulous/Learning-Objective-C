//
//  main.m
//  CarParts-Split
//
//  Created by yukun on 2018/1/25.
//  Copyright © 2018年 SouthWest University-yukun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tire.h"
#import "Engine.h"
#import "Car.h"
#import "Slant6.h"
#import "AllWeatherRadial.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool{
        Car *car = [[Car alloc] init];
        for (int i = 0; i < 4; i++) {
            AllWeatherRadial *tire;
//            tire = [[Tire alloc] initWithPressure: 23 + i treadDepth: 33 - i];
            tire = [[AllWeatherRadial alloc] init];
            [car setTire: tire atIndex: i];
            [tire release];//如果Car类中没有正确地保存tire对象，则会引发内存问题
        }
        Engine *engine = [[Slant6 alloc] init];
        [car setEngine: engine];
        [engine release];
        [car print];
        [car release];
    }
    return 0;
}


