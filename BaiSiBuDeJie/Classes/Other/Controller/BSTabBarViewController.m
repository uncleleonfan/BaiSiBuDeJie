//
//  BSTabBarViewController.m
//  BaiSiBuDeJie
//
//  Created by byex_888 on 2018/12/12.
//  Copyright © 2018 leon. All rights reserved.
//

#import "BSTabBarViewController.h"
#import "BSMeViewController.h"
#import "BSNewViewController.h"
#import "BSEssenceViewController.h"
#import "BSFriendTrendsViewController.h"
#import "BSTabBar.h"

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
    
    UITabBarItem *item = [UITabBarItem appearance];
    [item setTitleTextAttributes:attrs forState:UIControlStateNormal];
    [item setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
    
    [self setupChildVC:[[BSEssenceViewController alloc] init] title: @"精华" image:@"tabBar_essence_icon" selectImage:@"tabBar_essence_click_icon"];
    [self setupChildVC:[[BSNewViewController alloc] init] title:@"新帖" image:@"tabBar_new_icon" selectImage:@"tabBar_new_click_icon"];
    [self setupChildVC:[[BSFriendTrendsViewController alloc] init] title:@"关注" image:@"tabBar_friendTrends_icon" selectImage:@"tabBar_friendTrends_click_icon"];
    [self setupChildVC:[[BSMeViewController alloc] init] title:@"我" image:@"tabBar_me_icon" selectImage:@"tabBar_me_click_icon"];
    
    //tabBar是readonly 使用kvc形式赋值
    [self setValue: [[BSTabBar alloc] init] forKey:@"tabBar"];
        
//    [self setupChildVCWithTitle:@"精华" image:@"tabBar_essence_icon" selectImage:@"tabBar_essence_click_icon"];
//    UIViewController *vc0 = [[UIViewController alloc] init];
//    vc0.view.backgroundColor = [UIColor redColor];
//    vc0.tabBarItem.title = @"精华";
//    vc0.tabBarItem.image = [UIImage imageNamed:@"tabBar_essence_icon"];
//    vc0.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_essence_click_icon"];
////    [vc0.tabBarItem setTitleTextAttributes:attrs forState:UIControlStateNormal];
////    [vc0.tabBarItem setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
//    [self addChildViewController:vc0];
//    [self setupChildVCWithTitle:@"新帖" image:@"tabBar_new_icon" selectImage:@"tabBar_new_click_icon"];

//    UIViewController *vc1 = [[UIViewController alloc] init];
//    vc1.view.backgroundColor = [UIColor grayColor];
//    vc1.tabBarItem.title = @"新帖";
//    vc1.tabBarItem.image = [UIImage imageNamed:@"tabBar_new_icon"];
//    vc1.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_new_click_icon"];
////    [vc1.tabBarItem setTitleTextAttributes:attrs forState:UIControlStateNormal];
////    [vc1.tabBarItem setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
//    [self addChildViewController:vc1];
    
    
//    [self setupChildVCWithTitle:@"关注" image:@"tabBar_friendTrends_icon" selectImage:@"tabBar_friendTrends_click_icon"];
//    UIViewController *vc2 = [[UIViewController alloc] init];
//    vc2.view.backgroundColor = [UIColor greenColor];
//    vc2.tabBarItem.title = @"关注";
//    vc2.tabBarItem.image = [UIImage imageNamed:@"tabBar_friendTrends_icon"];
//    vc2.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_friendTrends_click_icon"];
////    [vc2.tabBarItem setTitleTextAttributes:attrs forState:UIControlStateNormal];
////    [vc2.tabBarItem setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
//    [self addChildViewController:vc2];
    
//    [self setupChildVCWithTitle:@"我" image:@"tabBar_me_icon" selectImage:@"tabBar_me_click_icon"];

//    UIViewController *vc3 = [[UIViewController alloc] init];
//    vc3.view.backgroundColor = [UIColor blueColor];
//    vc3.tabBarItem.title = @"我";
//    vc3.tabBarItem.image = [UIImage imageNamed:@"tabBar_me_icon"];
//    vc3.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_me_click_icon"];
////    [vc3.tabBarItem setTitleTextAttributes:attrs forState:UIControlStateNormal];
////    [vc3.tabBarItem setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
//    [self addChildViewController:vc3];
//
//    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
//    [btn setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
//    [btn setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateSelected];
//    btn.bounds = CGRectMake(0, 0, btn.currentBackgroundImage.size.width, btn.currentBackgroundImage.size.height);
//    btn.center = CGPointMake(self.tabBar.frame.size.width / 2, self.tabBar.frame.size.height / 2);
//    [self.tabBar addSubview:btn];
}

- (void)setupChildVCWithTitle:(NSString*) title image:(NSString*) image selectImage:(NSString*) selectedImage
{
    UIViewController *vc = [[UIViewController alloc] init];
    vc.tabBarItem.title = title;
    vc.tabBarItem.image = [UIImage imageNamed:image];
    vc.tabBarItem.selectedImage = [UIImage imageNamed:selectedImage];
    //    [vc0.tabBarItem setTitleTextAttributes:attrs forState:UIControlStateNormal];
    //    [vc0.tabBarItem setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
    vc.view.backgroundColor = [UIColor colorWithRed:arc4random_uniform(100)/100.0 green:arc4random_uniform(100)/100.0 blue:arc4random_uniform(100)/100 alpha:1];
    [self addChildViewController:vc];
}

- (void)setupChildVC:(UIViewController*) vc title: (NSString*) title image:(NSString*) image selectImage:(NSString*) selectedImage
{
    vc.tabBarItem.title = title;
    vc.tabBarItem.image = [UIImage imageNamed:image];
    vc.tabBarItem.selectedImage = [UIImage imageNamed:selectedImage];
    //    [vc0.tabBarItem setTitleTextAttributes:attrs forState:UIControlStateNormal];
    //    [vc0.tabBarItem setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
    
    //只要访问view，就会创建，造成所有的viewcontroller都加载了view
//    vc.view.backgroundColor = [UIColor colorWithRed:arc4random_uniform(100)/100.0 green:arc4random_uniform(100)/100.0 blue:arc4random_uniform(100)/100 alpha:1];
//
    UINavigationController *navigationVC = [[UINavigationController alloc] initWithRootViewController:vc];
    [self addChildViewController:navigationVC];
}

@end
