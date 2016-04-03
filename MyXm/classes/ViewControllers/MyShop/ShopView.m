//
//  ShopView.m
//  MyXm
//
//  Created by lxx on 16/1/22.
//  Copyright © 2016年 lxx. All rights reserved.
//

#import "ShopView.h"
#define HeightH IS_IPHONE4?80:100
@implementation ShopView

-(instancetype)initWithFrame:(CGRect)frame
{
    self=[super initWithFrame:frame];
    if (self) {
        
        self.backgroundColor=[UIColor  colorWithHexString:@"DBD9DB"];
  
        
        _RedView=[UIView new];
        _RedView.backgroundColor=[UIColor colorWithHexString:@"F85E5B"];
        [self addSubview:self.RedView];
        _scollView=[UIScrollView new];
        _scollView.delegate=self;
        _scollView.backgroundColor=[UIColor colorWithHexString:@"7C7C7C"];
        _scollView.showsHorizontalScrollIndicator=YES;
        [self addSubview:_scollView];
        _Sweep=[MyButton new];
        [_Sweep SetIMageStr:@"saoyisao" title:@"扫一扫" color:@"F3F3F3"];
        [_RedView addSubview:_Sweep];
      
        _vipCZ=[MyButton new];
        [_vipCZ SetIMageStr:@"vipRecharge" title:@"会员充值" color:@"F3F3F3"];
        [_RedView addSubview:_vipCZ];
        
        _vipXF=[MyButton new];
        [_vipXF SetIMageStr:@"vipExpense" title:@"会员消费" color:@"F3F3F3"];
        [_RedView addSubview:_vipXF];
        
        
        
        _cancelBtn=[MyButton new];
        [_cancelBtn SetIMageStr:@"hexiaoicon" title:@"核销" color:@"7C7C7C"];
        _cancelBtn.backgroundColor=[UIColor colorWithHexString:@"FEFEFE"];
        [_scollView addSubview:_cancelBtn];
        
        _refundBtn=[MyButton new];
        [_refundBtn SetIMageStr:@"tuikuanicon" title:@"退款" color:@"7C7C7C"];
        _refundBtn.backgroundColor=[UIColor colorWithHexString:@"FEFEFE"];
        [_scollView addSubview:_refundBtn];
        
        _checkBtn=[MyButton new];
        [_checkBtn SetIMageStr:@"zhangdanicon" title:@"账单" color:@"7C7C7C"];
        _checkBtn.backgroundColor=[UIColor colorWithHexString:@"FEFEFE"];
        [_scollView addSubview:_checkBtn];
        
        _scollViewCenter=[UIScrollView new];
        _scollViewCenter.backgroundColor=[UIColor colorWithHexString:@"FEFEFE"];
        _scollViewCenter.delegate=self;
        _scollViewCenter.pagingEnabled=YES;
        _scollViewCenter.showsHorizontalScrollIndicator=NO;
        [_scollView addSubview:_scollViewCenter];
        
        lableHead=[UILabel new];
        lableHead.text=@"今日累计（元）";
        [_scollViewCenter addSubview:lableHead];
        
        _lableMoney=[UILabel new];
        _lableMoney.text=@"0.01";
        _lableMoney.textColor=[UIColor redColor];
        [_lableMoney setFont:[UIFont systemFontOfSize:30]];
        [_scollViewCenter addSubview:_lableMoney];
        
        _lableMoneyNum=[UILabel new];
        _lableMoneyNum.text=@"一笔";
        [_lableMoneyNum setFont:[UIFont systemFontOfSize:17]];
        [_scollViewCenter addSubview:_lableMoneyNum];
        
        pageControl=[UIPageControl new];
      

        pageControl.numberOfPages=2;
        //设置颜色
        pageControl.pageIndicatorTintColor=[UIColor colorWithHexString:@"999999"];
        //    设置当前页面的指示颜色
        pageControl.currentPageIndicatorTintColor=[UIColor colorWithHexString:@"fc5e5c"];
        [self addSubview:pageControl];
    }


    return self;

}
-(void)layoutSubviews
{
    [super layoutSubviews];
    [_scollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_RedView.bottom);
        make.left.right.equalTo(self);
        make.width.equalTo(KKWidth);
        make.height.equalTo(KKHeight);
    }];
     self.scollView.contentSize = CGSizeMake(KKWidth,1000);
    
    _RedView.frame=CGRectMake(0, 0,KKWidth ,HeightH);
    [_Sweep mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_RedView);
        make.top.equalTo(_RedView);
        make.height.equalTo(HeightH);
        make.width.equalTo(KKWidth/3);
    }];
    [_vipCZ mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_Sweep.right);
        make.top.equalTo(_Sweep.top);
        make.width.equalTo(KKWidth/3);
        make.height.equalTo(HeightH);
    }];
    [_vipXF mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_vipCZ.right);
        make.top.equalTo(_Sweep.top);
        make.width.equalTo(KKWidth/3);
        make.height.equalTo(HeightH);
    }];
    
    
    [_cancelBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_scollView);
        make.width.equalTo((KKWidth-2)/3);
        make.left.equalTo(_RedView.left);
        make.height.equalTo(HeightH);
    }];
    [_refundBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_cancelBtn);
        make.width.equalTo((KKWidth-2)/3);
        make.left.equalTo(_cancelBtn.right).offset(1);
        make.height.equalTo(HeightH);
    }];

    [_checkBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_cancelBtn);
        make.width.equalTo((KKWidth-2)/3);
        make.left.equalTo(_refundBtn.right).offset(1);
        make.height.equalTo(HeightH);
    }];
    [_scollViewCenter mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_cancelBtn.bottom).offset(10);
        make.left.equalTo(_scollView);
        make.right.equalTo(_scollView);
        make.width.equalTo(_scollView);
        make.height.equalTo(IS_IPHONE4?100:150);
    }];
    self.scollViewCenter.contentSize = CGSizeMake(KKWidth*2,0);
    [lableHead mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_scollViewCenter).offset(20);
        make.top.equalTo(_scollViewCenter).offset(10);
    }];
    [_lableMoney mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(_scollViewCenter);
    }];

    [_lableMoneyNum mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_lableMoney.bottom).offset(5);
        make.centerX.equalTo(_scollViewCenter.centerX);
    }];
    
    [pageControl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(_scollViewCenter.bottom);
        make.centerX.equalTo(_scollViewCenter.centerX);
        make.height.equalTo(15);
        make.width.equalTo(200);
    }];
   
}
-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    CGPoint pt=scrollView.contentOffset;
    int pagePt=pt.x/KKWidth;
    if (scrollView==self.scollViewCenter) {
       
        self.scollViewCenter.contentSize = CGSizeMake(KKWidth*2,0);

    }
     pageControl.currentPage=pagePt;


}
@end
