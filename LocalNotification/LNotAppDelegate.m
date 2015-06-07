//
//  LNotAppDelegate.m
//  LocalNotification
//
//  Created by ITON on 6/30/14.
//  Copyright (c) 2014 ITON. All rights reserved.
//

#import "LNotAppDelegate.h"
#import "LNot2ViewController.h"
#import "LNotViewController.h"

@implementation LNotAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    LNotViewController *ivc = [storyboard instantiateViewControllerWithIdentifier:@"LNotViewController"];
    navigationControllerS=[[UINavigationController alloc] initWithRootViewController:ivc];
    navigationControllerS.navigationItem.hidesBackButton = NO;
    self.window.rootViewController =nil;
    self.window.rootViewController = navigationControllerS;
    [self.window makeKeyAndVisible];
    
    UILocalNotification *localNotification = [launchOptions objectForKey:UIApplicationLaunchOptionsLocalNotificationKey];
    
    if (localNotification)
    {
        application.applicationIconBadgeNumber = 0;
    }
    
    self.navigationBar = [[UINavigationBar alloc]init];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (void)application:(UIApplication *)application didReceiveLocalNotification:(UILocalNotification *)notification
{
    
       // application.applicationIconBadgeNumber = 0;
    
//    UINavigationController *navigationController = (UINavigationController *)self.window.rootViewController;
//    LNot2ViewController *Controller = navigationController.storyboard.instantiateInitialViewController;
//    [navigationController presentViewController:Controller animated:YES completion:nil];
//    [UIApplication sharedApplication].applicationIconBadgeNumber = 0;
//    
//    UIViewController *rootController = (UIViewController *)self.window.rootViewController;
    
    
    //[VotingViewController alloc] initWithNibName:@"VotingViewController" bundle:nil
    
   // LNot2ViewController
    
//    
//    UIViewController *notificationController = [[LNot2ViewController alloc] initWithNibName:@"LNot2ViewController" bundle:[NSBundle mainBundle]];//[rootController.storyboard instantiateViewControllerWithIdentifier:@"My Push Notification View"];
//    
//   // [rootController presentViewController:notificationController animated:YES completion:NULL];
//    
//    [self.navigationCont pushViewController:notificationController animated:YES];
//    
//   //   [self.window.rootViewController presentViewController:notificationController animated:YES completion:nil];
    
    
//    [[UIApplication sharedApplication] setApplicationIconBadgeNumber:0];
//    [[UIApplication sharedApplication] cancelAllLocalNotifications];
//    
// 
//    
//
    
    //For redirect to the view
    UIViewController *viewController;
            //Notify updates
    
    
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    LNot2ViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"LNot2ViewController"];
    //[vc setModalPresentationStyle:UIModalPresentationFullScreen];
    
    [navigationControllerS pushViewController:vc animated:YES];
    
    
//    LNot2ViewController *uvc1 = [[LNot2ViewController alloc] initWithNibName:NSStringFromClass([LNot2ViewController class]) bundle:nil];
//    viewController = uvc1;
//    
//    [self.window.rootViewController.navigationController pushViewController:uvc1 animated:YES];
    
    //[self.window.rootViewController presentModalViewController:viewController animated:NO];
    
    
//    LNot2ViewController *uvc1 =[[LNot2ViewController alloc]init];
//    [self.window.rootViewController presentViewController:uvc1 animated:YES completion:nil];

    
    
    
    
}

@end
