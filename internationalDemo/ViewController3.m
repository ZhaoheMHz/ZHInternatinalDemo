//
//  ViewController3.m
//  internationalDemo
//
//  Created by 赵赤赤 on 16/8/11.
//  Copyright © 2016年 mhz. All rights reserved.
//

#import "ViewController3.h"
#import "ZHTabBarController.h"
#import "NSBundle+Language.h"

@interface ViewController3 ()
@property (weak, nonatomic) IBOutlet UIButton *chineseBtn;
@property (weak, nonatomic) IBOutlet UIButton *englishBtn;

@end

@implementation ViewController3

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.chineseBtn setTitle:NSLocalizedString(@"btn1", nil) forState:UIControlStateNormal];
    [self.englishBtn setTitle:NSLocalizedString(@"btn2", nil) forState:UIControlStateNormal];
}

- (IBAction)chineseBtnAction:(id)sender {
    [self changeLanguageTo:@"zh-Hans"];
}

- (IBAction)englishBtnAction:(id)sender {
    [self changeLanguageTo:@"en"];
}

- (void)changeLanguageTo:(NSString *)language {
    // 设置语言
    [NSBundle setLanguage:language];
    
    // 然后将设置好的语言存储好，下次进来直接加载
    [[NSUserDefaults standardUserDefaults] setObject:language forKey:@"myLanguage"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    // 我们要把系统windown的rootViewController替换掉
    ZHTabBarController *tab = [[ZHTabBarController alloc] init];
    [UIApplication sharedApplication].keyWindow.rootViewController = tab;
    // 跳转到设置页
    tab.selectedIndex = 2;
}

@end


