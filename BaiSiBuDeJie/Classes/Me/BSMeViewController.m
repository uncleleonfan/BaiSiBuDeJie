//
//  BSMeViewController.m
//  BaiSiBuDeJie
//
//  Created by byex_888 on 2018/12/12.
//  Copyright © 2018 leon. All rights reserved.
//

#import "BSMeViewController.h"
#import "UIBarButtonItem+BSExtension.h"

@interface BSMeViewController ()

@end

@implementation BSMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"我的";
    
    
//    UIButton *settingButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    [settingButton setBackgroundImage:[UIImage imageNamed:@"mine-setting-icon"] forState:UIControlStateNormal];
//    [settingButton setBackgroundImage:[UIImage imageNamed:@"mine-setting-icon-click"] forState:UIControlStateHighlighted];
//    settingButton.size = settingButton.currentBackgroundImage.size;
//    [settingButton addTarget:self action:@selector(settingClick) forControlEvents:UIControlEventTouchUpInside];
//
//    UIButton *nightButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    [nightButton setBackgroundImage:[UIImage imageNamed:@"mine-moon-icon"] forState:UIControlStateNormal];
//    [nightButton setBackgroundImage:[UIImage imageNamed:@"mine-moon-icon-click"] forState:UIControlStateHighlighted];
//    nightButton.size = nightButton.currentBackgroundImage.size;
//    [nightButton addTarget:self action:@selector(nightClick) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *settingItem = [UIBarButtonItem itemWithImage:@"mine-setting-icon" highImage:@"mine-setting-icon-click" target:self action:@selector(settingClick)];
    UIBarButtonItem *nightItem = [UIBarButtonItem itemWithImage:@"mine-moon-icon" highImage:@"mine-moon-icon-click" target:self action:@selector(nightClick)];
    
    self.navigationItem.rightBarButtonItems = @[
                                                settingItem,
                                                nightItem
                                                ];
    
    self.view.backgroundColor = BSBackgroundColor;

}

- (void)settingClick
{
    BSLogFunc
}

- (void)nightClick
{
    BSLogFunc
}



@end
