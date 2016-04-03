//
//  XXNavigationController.m
//  MyXm
//
//  Created by lxx on 16/1/22.
//  Copyright © 2016年 lxx. All rights reserved.
//

#import "XXNavigationController.h"

@interface XXNavigationController ()

@end

@implementation XXNavigationController
+ (void)initialize
{
    // 获取当前类下面的UIBarButtonItem
//    UIBarButtonItem *item = [UIBarButtonItem appearanceWhenContainedIn:self, nil];
    
//    // 设置导航条按钮的文字颜色
//    NSMutableDictionary *titleAttr = [NSMutableDictionary dictionary];
//    titleAttr[NSForegroundColorAttributeName] = [UIColor colorWithHexString:@"F85E5B"];
//    [item setTitleTextAttributes:titleAttr forState:UIControlStateNormal];
//    设置导航栏背景
    [[UINavigationBar appearance]setBackgroundImage:[UIImage imageNamed:@"bg_clear"] forBarMetrics:UIBarMetricsDefault];
//    导航栏上按钮的字体颜色
    [[UINavigationBar appearance] setTitleTextAttributes:@{
                                                           NSForegroundColorAttributeName : [UIColor whiteColor]
                                                           }];
//    去掉导航栏底部黑线
    [UINavigationBar appearance].shadowImage = [[UIImage alloc] init];

    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
