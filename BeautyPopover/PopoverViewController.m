//
//  PopoverViewController.m
//  BeautyPopover
//
//  Created by Metallic  on 2017/8/27.
//  Copyright © 2017年 xiaowei. All rights reserved.
//

#import "PopoverViewController.h"

@interface PopoverViewController ()

@property (nonatomic, strong) UILabel *popLabel;

@end

@implementation PopoverViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.popLabel = [[UILabel alloc] init];
    self.popLabel.textColor = [UIColor orangeColor];
    self.popLabel.frame = CGRectMake(0, 0, 200, 100);
    self.popLabel.text = _popTitle;
    self.popLabel.textAlignment = NSTextAlignmentCenter;
    self.popLabel.numberOfLines = 0;
    [self.view addSubview:_popLabel];
}

- (CGSize)preferredContentSize
{
    return CGSizeMake(200, 100);
}

@end
