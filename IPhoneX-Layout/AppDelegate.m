//
//  AppDelegate.m
//  IPhoneX-Layout
//
//  Created by liu on 2018/4/12.
//  Copyright © 2018年 liu. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#define IS_iPhoneX ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) : NO)
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    FirstViewController *first = [[FirstViewController alloc]init];
    first.title = @"界面一";
    
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:first];
    [nav.navigationBar setTintColor:[UIColor redColor]];
    [nav.navigationBar setBarTintColor:[UIColor grayColor]];
    
    NSLog(@"%f",nav.navigationBar.frame.size.height);
    NSLog(@"------%f",[[UIApplication sharedApplication] statusBarFrame].size.height);
    
   
    SecondViewController *second = [[SecondViewController alloc]init];
    
    second.title = @"界面二";
    UINavigationController *nav2 = [[UINavigationController alloc]initWithRootViewController:second];
     [nav2.navigationBar setTintColor:[UIColor blackColor]];
    UITabBarController *tab = [[UITabBarController alloc]init];
    tab.viewControllers = @[nav,nav2];
    CGRect reg = tab.tabBar.frame;
    NSLog(@"======%f",reg.size.height);
    self.window.rootViewController = tab;
    
    [self.window makeKeyWindow];
    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
