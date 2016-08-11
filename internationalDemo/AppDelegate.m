//
//  AppDelegate.m
//  internationalDemo
//
//  Created by 赵赤赤 on 16/8/11.
//  Copyright © 2016年 mhz. All rights reserved.
//

#import "AppDelegate.h"
#import "ZHTabBarController.h"
#import "NSBundle+Language.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    if ([[NSUserDefaults standardUserDefaults] objectForKey:@"myLanguage"] && ![[[NSUserDefaults standardUserDefaults] objectForKey:@"myLanguage"] isEqualToString:@""]) {
        [NSBundle setLanguage:[[NSUserDefaults standardUserDefaults] objectForKey:@"myLanguage"]];
    }
    
    // 创建主页面
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = [[ZHTabBarController alloc] init];
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
