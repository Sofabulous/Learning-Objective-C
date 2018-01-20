//
//  main.m
//  CarParts-Accessors
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
    Tire *tires[4];
}
- (void) print;
- (Engine *) engine;
- (void) setEngine;
- (Tire *) tireAtIndex: (int) index;
- (void) setTire: (Tire *) tire atIndex:(int) index;
- (void) print;
@end // Car

@implementation Car
//- (id) init {
//    if (self = [super init]) {
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
}
- (Tire *) tireAtIndex: (int)index {
    if (index < 0 || index > 3){
        NSLog(@"bad index (%d) in \"tireAtIndex\"", index);
        exit(1);
    }
    return tires[index];
} //tireAtIndex:
- (void)setTire:(Tire *)tire atIndex:(int)index{
    if (index < 0 || index > 3){
        NSLog(@"bad index (%d) in \"tireAtIndex\"", index);
        exit(1);
    }
    tires[index] = tire;
} //setTire:atIndex:
@end // Car

int main(int argc, const char * argv[]) {
    Car *car = [Car new];
    Engine *engine = [Engine new];
    [car setEngine: engine];
    for (int i= 0; i < 4; i++) {
        Tire *tire = [Tire new];
        [car setTire: tire atIndex: i];
    }
    [car print];
    return 0;
}

