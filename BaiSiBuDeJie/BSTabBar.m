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
        [self addSubview:btn];
        self.btn = btn;
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    self.btn.bounds = CGRectMake(0, 0, self
                                 .btn.currentBackgroundImage.size.width, self.btn.currentBackgroundImage.size.height);
    self.btn.center = CGPointMake(self.width / 2, self.height / 2);
    
    CGFloat buttonY = 0;
    CGFloat buttonW = self.width / 5;
    CGFloat buttonH = self.height;
    NSInteger index = 0;
    for (UIView* button in self.subviews) {
        if (![button isKindOfClass:[UIControl class]] || button == self.btn) {
            continue;
        }
        CGFloat buttonX = buttonW * ((index > 1)?(index + 1):index);
        button.frame = CGRectMake(buttonX, buttonY, buttonW, buttonH);
        
        index++;
    }
    
}

@end
