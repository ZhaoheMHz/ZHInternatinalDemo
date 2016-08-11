//
//  ZHTabBarController.m
//  internationalDemo
//
//  Created by 赵赤赤 on 16/8/11.
//  Copyright © 2016年 mhz. All rights reserved.
//

#import "ZHTabBarController.h"
#import "ViewController1.h"
#import "ViewController2.h"
#import "ViewController3.h"

@interface ZHTabBarController ()

@end

@implementation ZHTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 创建一堆Controller
    ViewController1 *vc1 = [[ViewController1 alloc] init];
    UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:vc1];
    nav1.tabBarItem.title = NSLocalizedString(@"vc1Title", nil);
    
    ViewController2 *vc2 = [[ViewController2 alloc] init];
    UINavigationController *nav2 = [[UINavigationController alloc] initWithRootViewController:vc2];
    nav2.tabBarItem.title = NSLocalizedString(@"vc2Title", nil);

    ViewController3 *vc3 = [[ViewController3 alloc] init];
    UINavigationController *nav3 = [[UINavigationController alloc] initWithRootViewController:vc3];
    nav3.tabBarItem.title = NSLocalizedString(@"vc3Title", nil);
    
    self.viewControllers = @[nav1, nav2, nav3];
}

@end
