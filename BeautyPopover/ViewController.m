//
//  ViewController.m
//  BeautyPopover
//
//  Created by Metallic  on 2017/8/27.
//  Copyright © 2017年 xiaowei. All rights reserved.
//

#import "ViewController.h"
#import "PopoverViewController.h"

@interface ViewController () <UIPopoverPresentationControllerDelegate>

@end

@implementation ViewController


- (IBAction)normalButtonClicked:(UIButton *)sender
{
    PopoverViewController *popVC = [[PopoverViewController alloc] init];
    popVC.popTitle = @"My anchor is normal button!";
    popVC.modalPresentationStyle = UIModalPresentationPopover;
    
    UIPopoverPresentationController *popover = popVC.popoverPresentationController;
    popover.sourceView = sender;
    popover.sourceRect = sender.bounds;
    popover.delegate = self;
    
    [self presentViewController:popVC animated:YES completion:nil];
}

- (IBAction)barButtonClicked:(UIBarButtonItem *)sender
{
    PopoverViewController *popVC = [[PopoverViewController alloc] init];
    popVC.popTitle = @"My anchor is bar button!";
    popVC.modalPresentationStyle = UIModalPresentationPopover;
    
    UIPopoverPresentationController *popover = popVC.popoverPresentationController;
    popover.barButtonItem = sender;
    popover.delegate = self;
    
    [self presentViewController:popVC animated:YES completion:nil];
}

- (UIModalPresentationStyle)adaptivePresentationStyleForPresentationController:(UIPresentationController *)controller
{
    return UIModalPresentationNone;
}

@end
