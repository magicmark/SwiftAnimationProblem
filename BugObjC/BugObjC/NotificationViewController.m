//
//  NotificationViewController.m
//  BugObjC
//
//  Created by Mark on 26/12/2014.
//  Copyright (c) 2014 marklarah. All rights reserved.
//

#import "NotificationViewController.h"

@interface NotificationViewController ()
@property UITapGestureRecognizer *tap;
@end

@implementation NotificationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapped)];
    [self.view addGestureRecognizer:self.tap];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tapped {
    NSLog(@"You tapped me!");
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
