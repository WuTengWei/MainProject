//
//  AppDelegate.m
//  MainProject
//
//  Created by WTW on 2019/10/28.
//  Copyright © 2019 WTW. All rights reserved.
//

#import "AppDelegate.h"
#import "MineViewController.h"
#import <CTMediator+HomeModule.h>
#import <CTMediator+MineModule.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    self.window.backgroundColor = [UIColor whiteColor];
    
    UIViewController *HomeVc = [[CTMediator sharedInstance] HomeModule_ViewController];
    UIViewController *MineVc = [[CTMediator sharedInstance] MineModule_Mine_ViewControler];
    
    UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:HomeVc];
    UINavigationController *nav2 = [[UINavigationController alloc] initWithRootViewController:MineVc];
    
    UITabBarController *tab = [[UITabBarController alloc] init];

    [tab setViewControllers:@[nav1,nav2]];

    self.window.rootViewController = tab;
  
    [self.window makeKeyAndVisible];
  
    return YES;
}

@end
