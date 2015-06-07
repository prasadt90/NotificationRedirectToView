//
//  LNot2ViewController.m
//  LocalNotification
//
//  Created by ITON on 12/30/14.
//  Copyright (c) 2014 ITON. All rights reserved.
//

#import "LNot2ViewController.h"

@interface LNot2ViewController ()

@end

@implementation LNot2ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.hidesBackButton = NO;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)dismiss:(id)sender
{
    
    UIViewController *rootController = (UIViewController *)self.view.window.rootViewController;

    
    [rootController dismissViewControllerAnimated:YES completion:nil];
}
@end
