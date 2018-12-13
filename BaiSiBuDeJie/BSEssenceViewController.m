//
//  BSEssenceViewController.m
//  BaiSiBuDeJie
//
//  Created by byex_888 on 2018/12/12.
//  Copyright © 2018 leon. All rights reserved.
//

#import "BSEssenceViewController.h"
#import "UIBarButtonItem+BSExtension.h"

@interface BSEssenceViewController ()

@end

@implementation BSEssenceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    
    //导航栏左边按钮
//    UIButton *tagButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    [tagButton setBackgroundImage:[UIImage imageNamed:@"MainTagSubIcon"] forState:UIControlStateNormal];
//    [tagButton setBackgroundImage:[UIImage imageNamed:@"MainTagSubClickIcon"] forState:UIControlStateHighlighted];
//    tagButton.size = tagButton.currentBackgroundImage.size;
//    [tagButton addTarget:self action:@selector(tagClick) forControlEvents:UIControlEventTouchUpInside];
//    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:tagButton];
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"MainTagSubIcon" highImage:@"MainTagSubClickIcon" target:self action:@selector(tagClick)];
    
}

- (void)tagClick
{
    BSLog(@"tagClick");
}
@end
