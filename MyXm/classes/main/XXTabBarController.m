//
//  XXTabBarController.m
//  MyXm
//
//  Created by lxx on 16/1/21.
//  Copyright © 2016年 lxx. All rights reserved.
//

#import "XXTabBarController.h"
#import "MyShopViewController.h"
#import "NoteViewController.h"
#import "RetailViewController.h"
#import "AccountViewController.h"
#import "XXNavigationController.h"
@interface XXTabBarController ()

@end

@implementation XXTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor whiteColor];
    [self CreatControlls];
}
-(void)CreatControlls
{
     [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor orangeColor], NSForegroundColorAttributeName,[UIFont systemFontOfSize:8.0f], NSFontAttributeName,nil]forState:UIControlStateSelected];
    UITabBarItem *item1=[[UITabBarItem alloc]initWithTitle:@"我的门店" image:[[UIImage imageNamed:@"onepassy"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:@"one"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
    MyShopViewController *v1=[MyShopViewController new];
    v1.tabBarItem=item1;
    XXNavigationController *nav1=[[XXNavigationController alloc]initWithRootViewController:v1];
    [self addChildViewController:nav1];
    
    
    UITabBarItem *item2=[[UITabBarItem alloc]initWithTitle:@"记录" image:[[UIImage imageNamed:@"erhongpassy"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:@"erhong"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    NoteViewController *v2=[NoteViewController new];
    v2.tabBarItem=item2;
    XXNavigationController *nav2=[[XXNavigationController alloc]initWithRootViewController:v2];
    [self addChildViewController:nav2];
  
    
    UITabBarItem *item3=[[UITabBarItem alloc]initWithTitle:@"分销" image:[[UIImage imageNamed:@"sanpassy"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:@"san"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    RetailViewController *v3=[RetailViewController new];
    v3.tabBarItem=item3;
    XXNavigationController *nav3=[[XXNavigationController alloc]initWithRootViewController:v3];
    [self addChildViewController:nav3];

    UITabBarItem *item4=[[UITabBarItem alloc]initWithTitle:@"帐号" image:[[UIImage imageNamed:@"sipass"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:@"si"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    AccountViewController *v4=[AccountViewController new];
    v4.tabBarItem=item4;
    XXNavigationController *nav4=[[XXNavigationController alloc]initWithRootViewController:v4];
    [self addChildViewController:nav4];

    

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
