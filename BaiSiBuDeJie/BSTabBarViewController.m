//
//  BSTabBarViewController.m
//  BaiSiBuDeJie
//
//  Created by byex_888 on 2018/12/12.
//  Copyright © 2018 leon. All rights reserved.
//

#import "BSTabBarViewController.h"

@interface BSTabBarViewController ()

@end

@implementation BSTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    attrs[NSForegroundColorAttributeName] = [UIColor lightGrayColor];
    
    NSMutableDictionary *selectedAttrs = [NSMutableDictionary dictionary];
    selectedAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    selectedAttrs[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    
    
    UIViewController *vc0 = [[UIViewController alloc] init];
    vc0.view.backgroundColor = [UIColor redColor];
    vc0.tabBarItem.title = @"精华";
    vc0.tabBarItem.image = [UIImage imageNamed:@"tabBar_essence_icon"];
    vc0.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_essence_click_icon"];
    [vc0.tabBarItem setTitleTextAttributes:attrs forState:UIControlStateNormal];
    [vc0.tabBarItem setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
    [self addChildViewController:vc0];
    
    UIViewController *vc1 = [[UIViewController alloc] init];
    vc1.view.backgroundColor = [UIColor grayColor];
    vc1.tabBarItem.title = @"新帖";
    vc1.tabBarItem.image = [UIImage imageNamed:@"tabBar_new_icon"];
    vc1.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_new_click_icon"];
    [vc1.tabBarItem setTitleTextAttributes:attrs forState:UIControlStateNormal];
    [vc1.tabBarItem setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
    [self addChildViewController:vc1];
    
    UIViewController *vc2 = [[UIViewController alloc] init];
    vc2.view.backgroundColor = [UIColor greenColor];
    vc2.tabBarItem.title = @"关注";
    vc2.tabBarItem.image = [UIImage imageNamed:@"tabBar_friendTrends_icon"];
    vc2.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_friendTrends_click_icon"];
    [vc2.tabBarItem setTitleTextAttributes:attrs forState:UIControlStateNormal];
    [vc2.tabBarItem setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
    [self addChildViewController:vc2];
    
    UIViewController *vc3 = [[UIViewController alloc] init];
    vc3.view.backgroundColor = [UIColor blueColor];
    vc3.tabBarItem.title = @"我";
    vc3.tabBarItem.image = [UIImage imageNamed:@"tabBar_me_icon"];
    vc3.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_me_click_icon"];
    [vc3.tabBarItem setTitleTextAttributes:attrs forState:UIControlStateNormal];
    [vc3.tabBarItem setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
    [self addChildViewController:vc3];
    
}

@end
