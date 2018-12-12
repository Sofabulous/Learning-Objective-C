//
//  Things.h
//  ClassExtension
//
//  Created by yukun on 2018/3/11.
//  Copyright © 2018年 SouthWest University-yukun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Things : NSObject
@property (assign) NSInteger thing1;
@property (readonly, assign) NSInteger thing2;

- (void)resetAllValues;
@end
