//
//  main.m
//  CarParts
//
//  Created by yukun on 2018/1/20.
//  Copyright © 2018年 SouthWest University-yukun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tire : NSObject
@end // Tire

@implementation Tire
- (NSString *)description {
    return (@"I am a tire. I last a while");//我是轮胎。够用一会儿
} // description
@end // Tire

@interface Engine : NSObject
@end // Engine

@implementation Engine
- (NSString *)description {
    return (@"I am an engine. Vrooom!");
}
@end // Engine

@interface Car : NSObject
{
    Engine *engine;
    Tire *tire[4];
}
- (void) print;
@end // Car

@implementation Car
- (id) init {
    if (self = [super init]) {
        engine = [Engine new];
        tire[0] = [Tire new];
        tire[1] = [Tire new];
        tire[2] = [Tire new];
        tire[3] = [Tire new];
    }
    return (self);
}
- (void) print{
    NSLog(@"%@",engine);
    NSLog(@"%@",tire[0]);
    NSLog(@"%@",tire[1]);
    NSLog(@"%@",tire[2]);
    NSLog(@"%@",tire[3]);
}
@end // Car

int main(int argc, const char * argv[]) {
    Car *car;
    car = [Car new];
    [car print];
    return 0;
}
