//
//  UIBarButtonItem+BSExtension.m
//  BaiSiBuDeJie
//
//  Created by byex_888 on 2018/12/13.
//  Copyright © 2018 leon. All rights reserved.
//

#import "UIBarButtonItem+BSExtension.h"

@implementation UIBarButtonItem (BSExtension)

+ (instancetype)itemWithImage:(NSString*) image highImage:(NSString*) highImage target:(id) target action:(SEL) action
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    btn.size = btn.currentBackgroundImage.size;
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[UIBarButtonItem alloc] initWithCustomView:btn];
    
}
@end
