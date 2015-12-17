//
//  ViewController.m
//  URL测试
//
//  Created by Zhuge_Mac on 15/11/22.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"

#define kZGDouguoHomeURL @"http://webapi.bbs.szhome.com/api/bbs/getbbsnav_v3?IsNight=0"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadData];
}
- (void)loadData
{
    NSString *urlStr = @"http://www.edscw.com/AppShopGoods/FavoriteGoods?gid=27066&";
    NSDictionary *params = @{@"sign_ran":@"1dd61d52e647b1c969becfbcc075c17d",@"client":@4,@"code":@"c71954e05bdfa0fa"};
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    [manager POST:kZGDouguoHomeURL parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        id json = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:nil];
        NSLog(@"%@",json);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"%@",error);
    }];
}

@end
