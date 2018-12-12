//
//  CategoryThing.m
//  CategoryThing
//
//  Created by yukun on 2018/3/11.
//  Copyright © 2018年 SouthWest University-yukun. All rights reserved.
//

#import "CategoryThing.h"

@implementation CategoryThing

- (NSString *)description
{
    NSString *desc = [NSString stringWithFormat:@"%ld %ld %ld", thing1, thing2, thing3];
    return desc;
}

@end // CategoryThing
