//
//  Things.m
//  ClassExtension
//
//  Created by yukun on 2018/3/11.
//  Copyright © 2018年 SouthWest University-yukun. All rights reserved.
//

#import "Things.h"

//特殊的类别
//不需要命名的类扩展
@interface Things ()
{
    NSInteger thing4;
}
@property (readwrite, assign) NSInteger thing2;
@property (assign) NSInteger thing3;
@end // 类扩展

@implementation Things
//@synthesize thing1;
//@synthesize thing2;
//@synthesize thing3;

- (void)resetAllValues
{
    self.thing1 = 200;
    self.thing2 = 300; // 在类的源代码里，改变了属性的读写权限
    self.thing3 = 400;
    thing4 = 5;
}

- (NSString *)description
{
    NSString *desc = [NSString stringWithFormat:@"%ld %ld %ld", _thing1, _thing2, _thing3];
    return desc;
}


@end
