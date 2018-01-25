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
    Car *car = [Car new];
    Engine *engine = [Slant6 new]; // 多态
    [car setEngine: engine];
    for (int i= 0; i < 4; i++) {
        Tire *tire = [AllWeatherRadial new]; // 多态
        [car setTire: tire atIndex: i];
    }
    [car print];
    return 0;
}


