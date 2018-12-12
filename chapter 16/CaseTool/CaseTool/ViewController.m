//
//  ViewController.m
//  CaseTool
//
//  Created by yukun on 2018/3/16.
//  Copyright © 2018年 SouthWest University-yukun. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()

@end

@implementation ViewController
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        NSLog(@"init: text %@ / results %@", _textField, _resultsField);
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    NSLog(@"awake: text %@ / results %@", _textField, _resultsField);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"viewDidLoad: text %@ / results %@", _textField, _resultsField);
    [_textField setPlaceholder:@"Enter text here"];
    _resultsField.text = @"Results";
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)uppercase {
    NSString *original = _textField.text;
    NSString *uppercase = [original uppercaseString];
    _resultsField.text = uppercase;
}

- (IBAction)lowercase {
    NSString *original = _textField.text;
    NSString *lowercase = [original lowercaseString];
    _resultsField.text = lowercase;
}
@end
