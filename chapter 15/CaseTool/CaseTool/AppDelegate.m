//
//  AppDelegate.m
//  CaseTool
//
//  Created by yukun on 2018/3/15.
//  Copyright © 2018年 SouthWest University-yukun. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate
- (instancetype)init {
    self = [super init];
    if (self) {
        NSLog(@"init: text %@  / results %@", _textField, _resultsField);
    }
    return self;
}
- (void)awakeFromNib {
    NSLog(@"awake: text %@ / results %@", _textField, _resultsField);
    [_textField setStringValue:@"Enter text here"];
    [_resultsField setStringValue:@"Results"];
}
- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (IBAction)uppercase:(id)sender {
    NSString *original = [_textField stringValue];
    NSString *uppercase = [original lowercaseString];
    [_resultsField setStringValue:uppercase];
}

- (IBAction)lowercase:(id)sender {
    NSString *original = [_textField stringValue];
    NSString *lowercase = [original uppercaseString];
    [_resultsField setStringValue:lowercase];
}
@end
