//
//  BSRecommendViewController.m
//  BaiSiBuDeJie
//
//  Created by byex_888 on 2018/12/25.
//  Copyright © 2018 leon. All rights reserved.
//

#import "BSRecommendViewController.h"
#import "AFNetworking.h"
#import "SVProgressHUD.h"
#import "BSRecommendCategory.h"
#import "MJExtension.h"
#import "BSRecommendCategoryTableViewCell.h"

@interface BSRecommendViewController () <UITableViewDataSource, UITableViewDragDelegate>

/** categories **/
@property(nonatomic, strong) NSArray *categories;

@property (weak, nonatomic) IBOutlet UITableView *categoryTableView;
@end

@implementation BSRecommendViewController


static NSString *const BSCategoryID = @"category";

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"推荐关注";
    
    [self.categoryTableView registerNib: [UINib nibWithNibName:NSStringFromClass([BSRecommendCategoryTableViewCell class]) bundle:nil] forCellReuseIdentifier:BSCategoryID];
    
//    [SVProgressHUD show];    
    [[AFHTTPSessionManager manager] GET:@"http://gank.io/api/xiandu/categories" parameters:nil success:^(NSURLSessionDataTask * _Nonnull task, id _Nonnull responseObject){
        BSLog(@"%@", responseObject);
        self.categories = [BSRecommendCategory mj_objectArrayWithKeyValuesArray:responseObject[@"results"]];
        [SVProgressHUD dismiss];
        //刷新列表
        [self.categoryTableView reloadData];
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error){
        BSLog(@"log failure");
        [SVProgressHUD dismiss];
        [SVProgressHUD showErrorWithStatus:@"加载分类失败"];
    }];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.categories.count;
}

- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    BSRecommendCategoryTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:BSCategoryID];
    cell.category = self.categories[indexPath.row];
    return cell;
}


@end
