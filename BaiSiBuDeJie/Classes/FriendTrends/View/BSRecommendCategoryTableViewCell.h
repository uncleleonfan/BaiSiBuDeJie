//
//  BSRecommendCategoryTableViewCell.h
//  BaiSiBuDeJie
//
//  Created by byex_888 on 2018/12/27.
//  Copyright © 2018 leon. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class BSRecommendCategory;

@interface BSRecommendCategoryTableViewCell : UITableViewCell

/** category **/
@property(nonatomic, strong) BSRecommendCategory *category;

@end

NS_ASSUME_NONNULL_END
