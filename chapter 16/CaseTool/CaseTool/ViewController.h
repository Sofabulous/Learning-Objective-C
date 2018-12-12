//
//  ViewController.h
//  CaseTool
//
//  Created by yukun on 2018/3/16.
//  Copyright © 2018年 SouthWest University-yukun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *resultsField;

- (IBAction)uppercase;
- (IBAction)lowercase;

@end

