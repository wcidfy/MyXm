//
//  AccountViewController.m
//  MyXm
//
//  Created by lxx on 16/1/21.
//  Copyright © 2016年 lxx. All rights reserved.
//

#import "AccountViewController.h"
#import "AccountView.h"
#import "ViewController.h"
#import "MineViewController.h"
@interface AccountViewController ()
@property(nonatomic,strong)AccountView *accountView;
@end

@implementation AccountViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
    [self viewClicks];
}
-(void)loadView
{
    _accountView=[AccountView new];
    self.view=_accountView;

}
-(void)viewClicks
{
    self.title=@"我的帐号";
    UITapGestureRecognizer *tag=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapClick)];
    [_accountView.whileView addGestureRecognizer:tag];
    
    [_accountView.openZhi addTarget:self action:@selector(openZhiClick) forControlEvents:UIControlEventTouchUpInside];
    [_accountView.openWei addTarget:self action:@selector(openWeiClick) forControlEvents:UIControlEventTouchUpInside];
    [_accountView.openBai addTarget:self action:@selector(openBaiClick) forControlEvents:UIControlEventTouchUpInside];
    [_accountView.judegButton addTarget:self action:@selector(judegButtonClick) forControlEvents:UIControlEventTouchUpInside];
     [_accountView.exitButton addTarget:self action:@selector(exitButtonClick) forControlEvents:UIControlEventTouchUpInside];

}
-(void)tapClick
{
    MineViewController *mine=[MineViewController new];
    self.hidesBottomBarWhenPushed=YES;

    [self.navigationController pushViewController:mine animated:YES];
    self.hidesBottomBarWhenPushed=NO;
}
-(void)openZhiClick
{
    NSLog(@"点击支付宝");

}

-(void)openWeiClick
{
     NSLog(@"点击微信");

}
-(void)openBaiClick
{

     NSLog(@"点击百度钱包");
}
-(void)judegButtonClick
{

    NSLog(@"去评价");
}
-(void)exitButtonClick
{
    NSUserDefaults *ud=[NSUserDefaults standardUserDefaults];
    [ud removeObjectForKey:@"UserName"];
    [ud synchronize];
    
    ViewController *v=[ViewController new];
    [self presentViewController:v animated:YES completion:nil];
}
-(void)viewWillDisappear:(BOOL)animated
{
    [_accountView.scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.equalTo(603);
    }];


}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
