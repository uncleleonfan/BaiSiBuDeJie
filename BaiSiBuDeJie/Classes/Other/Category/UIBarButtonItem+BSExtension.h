//
//  UIBarButtonItem+BSExtension.h
//  BaiSiBuDeJie
//
//  Created by byex_888 on 2018/12/13.
//  Copyright © 2018 leon. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIBarButtonItem (BSExtension)
+ (instancetype)itemWithImage:(NSString*) image highImage:(NSString*) highImage target:(id) target action:(SEL) action;
@end

NS_ASSUME_NONNULL_END
