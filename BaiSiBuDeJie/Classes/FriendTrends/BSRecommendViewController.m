//
//  BSRecommendViewController.m
//  BaiSiBuDeJie
//
//  Created by byex_888 on 2018/12/25.
//  Copyright © 2018 leon. All rights reserved.
//

#import "BSRecommendViewController.h"
#import "AFNetworking.h"

@interface BSRecommendViewController ()

@end

@implementation BSRecommendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"推荐关注";
    
    [[AFHTTPSessionManager manager] GET:@"http://gank.io/api/xiandu/categories" parameters:nil success:^(NSURLSessionDataTask * _Nonnull task, id _Nonnull responseObject){
        BSLog(@"log success");
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error){
        BSLog(@"log failure");
    }];
    
}

@end
