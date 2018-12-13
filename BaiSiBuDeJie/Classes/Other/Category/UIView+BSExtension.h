//
//  UIView+BSExtension.h
//  BaiSiBuDeJie
//
//  Created by byex_888 on 2018/12/12.
//  Copyright © 2018 leon. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (BSExtension)

@property(nonatomic, assign) CGFloat width;
@property(nonatomic, assign) CGFloat height;
@property(nonatomic, assign) CGFloat x;
@property(nonatomic, assign) CGFloat y;
@property(nonatomic, assign) CGSize size;

/*在分类里面声明property,只会生成方法的声明，不会生成方法的实现和带_的成员变量*/


@end

NS_ASSUME_NONNULL_END
