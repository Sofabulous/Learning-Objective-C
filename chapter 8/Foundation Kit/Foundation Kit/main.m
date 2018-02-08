//
//  main.m
//  Foundation Kit
//
//  Created by yukun on 2018/1/27.
//  Copyright © 2018年 SouthWest University-yukun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tire.h"
int main(int argc, const char * argv[]){
    @autoreleasepool {
#pragma mark -
#pragma mark 常用结构体
#pragma mark -
#pragma mark NSRange
        //表示字符串里的字符范围或者数组里的元素范围
        NSRange range1;
        range1.location = 17;
        range1.length = 4;
        
        //C语言的聚合结构赋值机制
        NSRange range2 = {17,4};
        
        //Cocoa提供的一个快捷函数NSMakeRange()
        NSRange range3 = NSMakeRange(17, 4);
        
        #pragma mark CG开头的几何数据类型
        CGPoint point = CGPointMake(0, 0);
        
        CGSize size = CGSizeMake(10, 10);
        
        CGRect rect = CGRectMake(0, 0, 10, 10);
        
        //为了性能不用对象来写这些数据结构
        
#pragma mark -
#pragma mark 常用类
#pragma mark -
#pragma mark 字符串
#pragma mark -
#pragma mark NSString
        
#pragma mark 创建字符串
        //使用格式字符串和一些参数来创建NSString,不输入参数的话会是随机值
        NSString *height;
        height = [NSString stringWithFormat:@"your height is %d feet, %d inches", 5, 11];
        NSUInteger length = [height length];
        if ([height length] > 35) {
            NSLog(@"wow, you're really tall!");
        }
        
#pragma mark 比较字符串
        //比较字符串内容是否相同,==比较它们的指针
        NSString *thing1 = @"hello 5";
        NSString *thing2 = [NSString stringWithFormat:@"hello %d", 5];
        if ([thing1 isEqualToString: thing2]) {
            NSLog(@"they are the same!");
        }
        //比较字符串compare 小于-1 等于0 大于1 z最大， 区分大小写的比较
        NSLog(@"%ld",(long)[@"zoinks" compare: @"jinkies"]);
        
        //compare options，它能给我们更多的选择权,options参数是一个掩位码，可以使用位或bitwise运算符|来添加选项标记
        //NSCaseInsensitiveSearch: 不区分大小写字符
        //NSLiteralSearch:进行完全比较，区分大小写
        //NSNumericSearch:比较字符串的字符个数，而不是字符串值，用于100与99之类的比较
        if ([thing1 compare: thing2 options:NSCaseInsensitiveSearch | NSNumericSearch] == NSOrderedSame) {
            NSLog(@"they match!");
        }
        
#pragma mark 判断子串
        NSString *filename = @"draft-chapter.pages";
        //不接受nil，不然内存错误
        if ([filename hasPrefix:@"draft"]) {
            //this is a draft
            NSLog(@"this is a draft");
        }
        if ([filename hasSuffix:@".mov"]) {
            //this is a movie
            NSLog(@"this is a movie");
        }
        //找到子串的位置rangeOfString
        NSRange range = [filename rangeOfString:@"chapter"];
        NSLog(@"range.location is %lu and range.length is %lu", (unsigned long)range.location, (unsigned long)range.length);
        //如果没有找到则range.location等于NSNotFound
        
#pragma mark NSMutableString
        //为了可变性，Cocoa提供了NSString的子类NSMutableString
        NSMutableString *string = [NSMutableString stringWithCapacity:42];
        [string appendString:@"Hello there "];
        [string appendFormat:@"human %d!",39];
        NSLog(@"%@", string);
        
        NSMutableString *friends = [NSMutableString stringWithCapacity:50];
        [friends appendString:@"James Bethlynn Jack Evan"];
        //now I hate Jack!delete him!
        NSRange jackRange = [friends rangeOfString:@"Jack"];
        jackRange.length++;// eat the space that follows
        [friends deleteCharactersInRange:jackRange];
        NSLog(@"%@", friends);
        //根据多态，任何使用NSString的地方都可以用NSMutableString来替代NSString可行的地方，NSMutableString也能畅通无阻
        //根据继承，可以使用NSString的方法创建NSMutableString
        NSMutableString *string2 = [NSMutableString stringWithFormat:@"jo%dy",2];
        NSLog(@"%@", string2);
#pragma mark -
#pragma mark 集合类型
#pragma mark -
#pragma mark NSArray
        //列表结尾添加nil代表列表结束-数组中不能存储nil的一个原因
        NSArray *array = [NSArray arrayWithObjects:@"one",@"two",@"three",nil];
        //可以用数组字面量格式来创建一个数组
        NSArray *array2 = @[@"one",@"two",@"three"];
        //使用字面量访问数组
        for (NSInteger i = 0; i < [array count]; i++) {
            NSLog(@"index %ld has %@",(long)i,array[i]);
        }
        //使用objectAtIndex访问数组
        for (NSInteger i = 0; i < [array count]; i++) {
            NSLog(@"index %ld has %@",i,[array objectAtIndex:i]);
        }
        //数组与字符串的互相转换
        NSString *stringA = @"oop:ack:bork:greeble:ponies";
        NSArray *chunck = [stringA componentsSeparatedByString:@":"];
        stringA = [chunck componentsJoinedByString:@":~)"];
        NSLog(@"%@", stringA);
#pragma mark NSMutableArray
        NSMutableArray *newArray = [NSMutableArray arrayWithCapacity:17];
        for (NSInteger i = 0; i < 4; i++) {
            Tire *tire = [Tire new];
            [newArray addObject:tire];
        }
        [newArray removeObjectAtIndex:1];
        //没有用来创建NSMutableArray对象的字面量语法
#pragma mark NSEnumerator
        //用枚举器遍历数组
        NSEnumerator *emumerator = [array objectEnumerator];
        //reverseObjectEnumerator可以从后往前浏览某个集合
        //用nextObject访问它的下一个对象，返回nil时循环结束-数组不能储存nil的另一个原因
        id thingie;//不能将定义放入while中
        while (thingie = [emumerator nextObject]) {
            NSLog(@"I found %@", thingie);
        }
        //使用枚举操作可变数组时，请不要添加 删除对象 否则枚举器就会出现混乱
#pragma mark 快速枚举
        for (NSString *string in array) {
            NSLog(@"I found %@", string);
        }
        //通过代码块枚举对象 -- 感觉像是swift闭包
        [array enumerateObjectsUsingBlock:^(NSString *string, NSUInteger index,BOOL *stop){
            NSLog(@"I found %@", string);
        }];
        //代码块可以让循环操作并发执行
#pragma mark NSDictionary
        Tire *t1 = [Tire new];
        Tire *t2 = [Tire new];
        Tire *t3 = [Tire new];
        Tire *t4 = [Tire new];
        NSDictionary *tires = [NSDictionary dictionaryWithObjectsAndKeys:t1,@"front-left", t2,@"front-right", t3,@"back-left", t4,@"back-right", nil];//注意先对象，后关键字
        //NSDictionary *tires = @{@"front-left" : t1, @"front-left" : t2, @"back-left" : t3, @"back-right" : t4};
        //-objectForKey访问字典中的数值,如果没有字典返回nil
        //或者是tires[key]
        Tire *tire = [tires objectForKey:@"back-right"];
//      Tire *tire = tires[@"back-right"];
#pragma mark NSMutableDictionary
        NSMutableDictionary *newTires = [NSMutableDictionary dictionary];
        //或者使用dictionaryWithCapacity
        [newTires setObject:t1 forKey:@"front-left"];
        [newTires setObject:t2 forKey:@"front-right"];
        [newTires setObject:t3 forKey:@"back-left"];
        [newTires setObject:t4 forKey:@"back-right"];
        //setObject，如果关键字重复的话，将会新值替换旧值
        [newTires removeObjectForKey:@"back-left"];
#pragma mark -
#pragma mark 其它数值
#pragma mark -
#pragma mark NSNumber
        //创建
        //创建方法
        NSNumber *number1 = [NSNumber numberWithChar:@'X'];
        //字面量语法来创建这些对象
        NSNumber *number2;
        number2 = @'X';
        //获取
        [number2 intValue];
#pragma mark NSValue
        //创建 参数1.你想要封装的地址 2.描述这个数据类型的字符串，说明实体的类型和大小，@encode编译器指令可以接受数据类型的名称并为你生成适合的字符串
        NSRect Rect = NSMakeRect(1, 2, 30, 40);
        NSValue *value = [NSValue valueWithBytes:&Rect objCType:@encode(NSRect)];
        [newArray addObject:value];//index is 4
        value = [newArray objectAtIndex:4];
        //getValue提取数值，需要传递存储这个数值的变量地址
        [value getValue: &Rect];
        //可以将struct型便捷转化为NSValue
        value = [NSValue valueWithRect:rect];
        NSRect antherRect = [value rectValue];
#pragma mark NSNull
        //虽然不能在数组下存入nil，但是可以用NSNull消除这种歧义
        [NSNull null];//总是返回同一个数值，可以使用==与其他值进行比较
    } // @autoreleasepool
    return 0;
}
