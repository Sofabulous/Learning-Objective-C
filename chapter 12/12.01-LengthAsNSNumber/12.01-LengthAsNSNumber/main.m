//
//  main.m
//  12.01-LengthAsNSNumber
//
//  Created by yukun on 2018/3/11.
//  Copyright © 2018年 SouthWest University-yukun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+NumberConvenience.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
        NSMutableDictionary *dict = [NSMutableDictionary dictionary];
        
        [dict setObject:[@"hello" lengthAsNumber] forKey:@"hello"];
        
        [dict setObject:[@"iLikeFish" lengthAsNumber] forKey:@"iLikeFish"];
        
        [dict setObject:[@"Once upon a time" lengthAsNumber] forKey:@"Once upon a time"];
        
        NSLog(@"%@",dict);
    }
    return 0;
}
