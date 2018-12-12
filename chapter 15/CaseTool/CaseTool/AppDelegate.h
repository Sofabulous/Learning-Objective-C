//
//  AppDelegate.h
//  CaseTool
//
//  Created by yukun on 2018/3/15.
//  Copyright © 2018年 SouthWest University-yukun. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>
//outlet
@property (weak) IBOutlet NSTextField *textField;
@property (weak) IBOutlet NSTextField *resultsField;
//action
- (IBAction)uppercase:(id)sender;
- (IBAction)lowercase:(id)sender;
@end

