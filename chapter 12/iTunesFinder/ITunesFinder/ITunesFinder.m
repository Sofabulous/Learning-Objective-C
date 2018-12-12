//
//  ITunesFinder.m
//  iTunesFinder
//
//  Created by yukun on 2018/3/11.
//  Copyright © 2018年 SouthWest University-yukun. All rights reserved.
//

#import "ITunesFinder.h"

@implementation ITunesFinder
- (void)netServiceBrowser:(NSNetServiceBrowser *)browser didFindService:(NSNetService *)service moreComing:(BOOL)moreComing
{
    [service resolveWithTimeout:10];
    NSLog(@"found one! Name is %@", [service name]);
} // didFindService

- (void)netServiceBrowser:(NSNetServiceBrowser *)browser didRemoveService:(NSNetService *)service moreComing:(BOOL)moreComing
{
    [service resolveWithTimeout:10];
    
    NSLog(@"lost one! Name is %@", [service name]);
} // didRemoveService

@end // ITunesFinder
