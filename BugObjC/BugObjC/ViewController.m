//
//  ViewController.m
//  BugObjC
//
//  Created by Mark on 26/12/2014.
//  Copyright (c) 2014 marklarah. All rights reserved.
//

#import "ViewController.h"
#import "NotificationViewController.h"

@interface ViewController ()

@property NotificationViewController *nvs;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.nvs = [[NotificationViewController alloc] init];
    // Do any additional setup after loading the view, typically from a nib.
    self.nvs.view.frame = CGRectMake(0, 0, self.view.bounds.size.width, 64);
    [self.view addSubview:self.nvs.view];
    self.nvs.view.alpha = 0.0;
}

- (IBAction)showNotification:(UIButton *)button {
    NSLog(@"shwoing notification");
    [UIView animateWithDuration:0.8 animations:^{
        self.nvs.view.alpha = 1.0;
    } completion:^(BOOL finished){
        [UIView animateWithDuration:0.8 delay:5.0 options:UIViewAnimationOptionCurveLinear animations:^{
            // Uncomment below line to see bug
            // self.nvs.view.alpha = 0.0;
        } completion:NULL];
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
