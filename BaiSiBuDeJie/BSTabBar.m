//
//  BSTabBar.m
//  BaiSiBuDeJie
//
//  Created by byex_888 on 2018/12/12.
//  Copyright © 2018 leon. All rights reserved.
//

#import "BSTabBar.h"

@implementation BSTabBar



- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        UIButton* btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [btn setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateSelected];

        self.btn = btn;
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    self.btn.bounds = CGRectMake(0, 0, self
                                 .btn.currentBackgroundImage.size.width, self.btn.currentBackgroundImage.size.height);
    self.btn.center = CGPointMake(self.frame.size.width / 2, self.frame.size.height / 2);
    
    CGFloat buttonY = 0;
    CGFloat buttonW = self.frame.size.width / 5;
    CGFloat buttonH = self.frame.size.height;
    NSInteger index = 0;
    for (UIView* button in self.subviews) {
        if (![button isKindOfClass:[UIControl class]]) {
            continue;
        }
        CGFloat buttonX = buttonW * ((index > 1)?(index + 1):index);
        button.frame = CGRectMake(buttonX, buttonY, buttonW, buttonH);
        
        index++;
    }
    
}

@end
