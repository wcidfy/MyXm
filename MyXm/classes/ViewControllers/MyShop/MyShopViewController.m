//
//  MyShopViewController.m
//  MyXm
//
//  Created by lxx on 16/1/21.
//  Copyright © 2016年 lxx. All rights reserved.
//

#import "MyShopViewController.h"
#import "ShopView.h"
#import "SaoYiSaoViewController.h"
@interface MyShopViewController ()
@property(nonatomic,strong)ShopView *shopView;
@end

@implementation MyShopViewController
-(void)loadView
{
    _shopView=[ShopView new];
    self.view=_shopView;

}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  
    [self ButClicks];
    
  }
-(void)ButClicks
{
    self.title=@"我的门店";
    self.view.backgroundColor=[UIColor grayColor];
    
    [_shopView.Sweep addTarget:self action:@selector(SweepAction) forControlEvents:UIControlEventTouchUpInside];
    [_shopView.vipCZ addTarget:self action:@selector(vipCzClick) forControlEvents:UIControlEventTouchUpInside];
     [_shopView.vipXF addTarget:self action:@selector(vipXfClick) forControlEvents:UIControlEventTouchUpInside];
    
     [_shopView.cancelBtn addTarget:self action:@selector(cancelClick) forControlEvents:UIControlEventTouchUpInside];
    [_shopView.refundBtn addTarget:self action:@selector(refundClick) forControlEvents:UIControlEventTouchUpInside];
     [_shopView.checkBtn addTarget:self action:@selector(checkClick) forControlEvents:UIControlEventTouchUpInside];
    
}
/**
 *点击扫一扫
 */
-(void)SweepAction
{

    SaoYiSaoViewController *sao=[SaoYiSaoViewController new];
    self.hidesBottomBarWhenPushed=YES;
    [self.navigationController pushViewController:sao animated:NO];
    self.hidesBottomBarWhenPushed=NO;

}
/**
 *  点击会员充值
 */
-(void)vipCzClick
{

    NSLog(@"会员充值");
}
/**
 * 点击 会员消费
 */
-(void)vipXfClick
{
    NSLog(@"会员消费");

}
/**
 *  点击核销
 */
-(void)cancelClick
{
    NSLog(@"点击核销");


}
/**
 *  点击退款
 */
-(void)refundClick
{

    NSLog(@"点击退款");

}
/**
 *点击账单
 */
-(void)checkClick
{

    NSLog(@"点击账单");


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
