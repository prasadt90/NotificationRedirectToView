//
//  LNotViewController.m
//  LocalNotification
//
//  Created by ITON on 6/30/14.
//  Copyright (c) 2014 ITON. All rights reserved.
//

#import "LNotViewController.h"

@interface LNotViewController ()

@end

@implementation LNotViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)notificationButtonPressed:(id)sender
{
//    UILocalNotification *notific = [[UILocalNotification alloc]init];
//    
//    notific.fireDate = [NSDate dateWithTimeIntervalSinceNow:2];
//    notific.alertBody = @"This is locally generated notification";
//    notific.timeZone = [NSTimeZone localTimeZone];
//    
//    notific.applicationIconBadgeNumber = [[UIApplication sharedApplication] applicationIconBadgeNumber] + 1;
//    
//    
//    [[UIApplication sharedApplication] scheduleLocalNotification:notific];
    
    //[self localNotificationOwn];
    

    
    
    UILocalNotification *localNotif = [[UILocalNotification alloc] init];
    if (localNotif == nil)
        return;
    localNotif.fireDate = [NSDate dateWithTimeIntervalSinceNow:03];
    localNotif.timeZone = [NSTimeZone defaultTimeZone];
    
    localNotif.alertBody = [NSString stringWithFormat:@"Hello local notification"];
    localNotif.alertAction = NSLocalizedString(@"View Details", nil);
    localNotif.alertTitle = NSLocalizedString(@"Item Due", nil);
    
    localNotif.soundName = UILocalNotificationDefaultSoundName;
    localNotif.applicationIconBadgeNumber = 1;
    
    
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotif];
}


@end
