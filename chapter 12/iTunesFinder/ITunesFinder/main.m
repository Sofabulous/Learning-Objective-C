//
//  main.m
//  ITunesFinder
//
//  Created by yukun on 2018/3/11.
//  Copyright © 2018年 SouthWest University-yukun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ITunesFinder.h"
//delegate-代理的用法
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSNetServiceBrowser *browser = [[NSNetServiceBrowser alloc] init];
        
        ITunesFinder *finder = [[ITunesFinder alloc] init];
        
        [browser setDelegate:finder];
        [browser searchForServicesOfType:@"_daap._tcp" inDomain:@"local."];
        
        
        NSLog(@"begun browsing");
        
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}
