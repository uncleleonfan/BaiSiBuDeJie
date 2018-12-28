//
//  BSRecommendCategoryTableViewCell.m
//  BaiSiBuDeJie
//
//  Created by byex_888 on 2018/12/27.
//  Copyright © 2018 leon. All rights reserved.
//

#import "BSRecommendCategoryTableViewCell.h"
#import "BSRecommendCategory.h"

@implementation BSRecommendCategoryTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setCategory:(BSRecommendCategory *)category
{
    _category = category;
    self.textLabel.text = category.name;
}

@end
