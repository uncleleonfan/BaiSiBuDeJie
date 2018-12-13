//
//  BSFriendTrendsViewController.m
//  BaiSiBuDeJie
//
//  Created by byex_888 on 2018/12/12.
//  Copyright © 2018 leon. All rights reserved.
//

#import "BSFriendTrendsViewController.h"
#import "UIBarButtonItem+BSExtension.h"
@interface BSFriendTrendsViewController ()

@end

@implementation BSFriendTrendsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"我的关注";
    
//    UIButton *friendButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    [friendButton setBackgroundImage:[UIImage imageNamed:@"friendsRecommentIcon"] forState:UIControlStateNormal];
//    [friendButton setBackgroundImage:[UIImage imageNamed:@"friendsRecommentIcon-click"] forState:UIControlStateHighlighted];
//    friendButton.size = friendButton.currentBackgroundImage.size;
//    [friendButton addTarget:self action:@selector(friendClick) forControlEvents:UIControlEventTouchUpInside];
//    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:friendButton];
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"friendsRecommentIcon" highImage:@"friendsRecommentIcon-click" target:self action:@selector(friendClick)];
    
    self.view.backgroundColor = BSBackgroundColor;

}


- (void)friendClick
{
//    BSLog(@"friend click");
    BSLogFunc
}
@end
