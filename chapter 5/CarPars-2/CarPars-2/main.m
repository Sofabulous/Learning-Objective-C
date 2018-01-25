//
//  main.m
//  CarPars-2
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

@interface AllWeatherRadial : Tire
@end // AllWeatherRadial

@implementation AllWeatherRadial
- (NSString *)description{
    return (@"I am a tire for rain or shine.");
} // description
@end // AllWeatherRadial

@interface Engine : NSObject
@end // Engine

@implementation Engine
- (NSString *)description {
    return (@"I am an engine. Vrooom!");
} // description
@end // Engine

@interface Slant6: Engine
@end // Slant6
//MARK:new subclass
#pragma mark new subclass Slant6
@implementation Slant6
- (NSString *)description{
    return (@"I am a slant- 6. VROOOM!");
} // description
@end // Slant6

@interface automoblie : NSObject
{
    Engine *engine;
    Tire *tires[4];
}
- (void) print;
- (Engine *) engine;
- (void) setEngine: (Engine*) newEngine;
- (Tire *) tireAtIndex: (int) index;
- (void) setTire: (Tire *) tire atIndex:(int) index;
@end // Car

@implementation automoblie
//- (id) init {
//    if (self  = [super init]) {
//        engine = [Engine new];
//        tires[0] = [Tire new];
//        tires[1] = [Tire new];
//        tires[2] = [Tire new];
//        tires[3] = [Tire new];
//    }
//    return (self);
//} // init
- (void) print {
    NSLog(@"%@",engine);
    NSLog(@"%@",tires[0]);
    NSLog(@"%@",tires[1]);
    NSLog(@"%@",tires[2]);
    NSLog(@"%@",tires[3]);
} // print
- (Engine *) engine {
    return (engine);
} // engine
- (void) setEngine: (Engine *) newEngine {
    engine = newEngine;
} //setEngine
- (Tire *) tireAtIndex: (int)index {
    if (index < 0 || index > 3){
        NSLog(@"bad index (%d) in \"tireAtIndex\"", index);
        exit(1);
    }
    return tires[index];
} // tireAtIndex:
- (void)setTire:(Tire *)tire atIndex:(int)index{
    if (index < 0 || index > 3){
        NSLog(@"bad index (%d) in \"tireAtIndex\"", index);
        exit(1);
    }
    tires[index] = tire;
} // setTire:atIndex:
@end // Car

int main(int argc, const char * argv[]) {
    automoblie *car = [automoblie new];
    Engine *engine = [Slant6 new]; // 多态
    [car setEngine: engine];
    for (int i= 0; i < 4; i++) {
        Tire *tire = [AllWeatherRadial new]; // 多态
        [car setTire: tire atIndex: i];
    }
    [car print];
    return 0;
}


