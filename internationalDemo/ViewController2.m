//
//  ViewController2.m
//  internationalDemo
//
//  Created by 赵赤赤 on 16/8/11.
//  Copyright © 2016年 mhz. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];

    self.label.text = NSLocalizedString(@"label2", nil);
}

@end
