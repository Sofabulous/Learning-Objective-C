//
//  main.m
//  ClassExtension
//
//  Created by yukun on 2018/3/11.
//  Copyright © 2018年 SouthWest University-yukun. All rights reserved.
//

//类扩展

#import <Foundation/Foundation.h>
#import "Things.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
        Things *things = [[Things alloc] init];
        things.thing1 = 1;
        NSLog(@"%@", things);
        [things resetAllValues];
        NSLog(@"%@", things);
    }
    return 0;
}
