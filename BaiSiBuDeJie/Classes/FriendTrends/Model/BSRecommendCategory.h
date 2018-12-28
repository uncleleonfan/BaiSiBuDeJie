//
//  BSRecommendCategory.h
//  BaiSiBuDeJie
//
//  Created by byex_888 on 2018/12/27.
//  Copyright © 2018 leon. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BSRecommendCategory : NSObject


/** id **/
@property(nonatomic, copy) NSString *_id;

/** en_name **/
@property(nonatomic, copy) NSString *en_name;

/** name **/
@property(nonatomic, copy) NSString *name;

/** rank **/
@property(nonatomic, assign) NSInteger rank;


@end

NS_ASSUME_NONNULL_END
