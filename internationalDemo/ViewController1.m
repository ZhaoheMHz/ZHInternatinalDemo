//
//  ViewController1.m
//  internationalDemo
//
//  Created by 赵赤赤 on 16/8/11.
//  Copyright © 2016年 mhz. All rights reserved.
//

#import "ViewController1.h"

@interface ViewController1 ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.label.text = NSLocalizedString(@"label1", nil);
}

@end
