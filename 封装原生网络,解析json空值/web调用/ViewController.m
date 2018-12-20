//
//  ViewController.m
//  web调用
//
//  Created by 郭朝顺 on 2018/4/21星期六.
//  Copyright © 2018年 乐乐. All rights reserved.
//

#import "ViewController.h"
#import "NSNumber+EqualString.h"
#import "Person.h"
#import "NetWork.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self loadData:nil];

    NSDictionary * dic = @{
                           @"person":[[Person alloc]init]
                           };
    NSLog(@"%@",dic);
    
    NSLog(@"--------------");
    
    NSNumber * num = @(99.99);
    //    NSLog(@"num = %@",num);
    NSString * money = [NSString stringWithFormat:@"¥ %@",num];
    NSLog(@"money = %@",money);
    NSLog(@"--------------");
    
    
    
    NSLog(@"%@",@(99.99).description);
    NSLog(@"%@",@(99.99).moneyDescription);
    NSLog(@"%@",@(99.99));
    
    NSLog(@"%@",@(67.96).description);
    NSLog(@"%@",@(67.96).moneyDescription);
    NSLog(@"%@",@(67.96));
    NSLog(@"%@",@(2.2));
    NSLog(@"%@",@(199));
    NSLog(@"%@",@(321));
    
    
    
}

- (IBAction)loadData:(id)sender {
    
    NetWork * network = [[NetWork alloc] init] ;
    network.urlString = @"http://qz.test.internet.zhiwangyilian.com/api/client-community/client/community/hot/hotList";
    network.parameters = @{@"pageIndex":@"0",
                           @"pageSize":@"20",
                           };
    network.success = ^(NSDictionary * data) {
        
    };
    network.fail = ^(NSError * error) {
        NSLog(@"%@",error);
    };
    [network startLoadData];
    
}

@end
