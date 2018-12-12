//
//  main.m
//  CategoryThing
//
//  Created by yukun on 2018/3/11.
//  Copyright © 2018年 SouthWest University-yukun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CategoryThing.h"
//类别作用1：将类的实现代码分散到多个不同的文件或框架中
int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
        CategoryThing *thing = [[CategoryThing alloc] init];
        
        [thing setThing1: 5];
        [thing setThing2: 23];
        [thing setThing3: 42];
        
        NSLog(@"Things are %@", thing);
    }
    return 0;
}
