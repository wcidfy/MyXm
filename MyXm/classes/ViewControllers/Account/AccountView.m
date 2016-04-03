//
//  AccountView.m
//  MyXm
//
//  Created by lxx on 16/1/23.
//  Copyright © 2016年 lxx. All rights reserved.
//

#import "AccountView.h"
@implementation AccountView
#define  HeightH IS_IPHONE4?80:100
#define  HeightB IS_IPHONE4?40:50
-(instancetype)initWithFrame:(CGRect)frame
{
    
    self=[super initWithFrame:frame];
    if (self) {
        _scrollView=[UIScrollView new];
        _scrollView.backgroundColor=[UIColor colorWithHexString:@"F4F4F5"];
        [self addSubview:_scrollView];
        
        
        _whileView=[UIView new];
        _whileView.backgroundColor=[UIColor whiteColor];
        _whileView.layer.borderWidth=1;
        _whileView.layer.borderColor=[UIColor colorWithHexString:@"C7C7C8"].CGColor;
        [_scrollView addSubview:_whileView];
        
        _imageView=[UIImageView new];
        _imageView.image=[UIImage imageNamed:@"sbtx"];
        [_whileView addSubview:_imageView];
        
        _lableName=[UILabel new];
        _lableName.text=@"小强";
        [_whileView addSubview:_lableName];
        
        _lableShop=[UILabel new];
        _lableShop.text=@"旗舰店－财务专员";
        [_whileView addSubview:_lableShop];
        
        imageRight=[UIImageView new];
        imageRight.image=[UIImage imageNamed:@"right_back"];
        [_whileView addSubview:imageRight];
        
        _viewCenter =[UIView new];
        _viewCenter.layer.borderWidth=1;
        _viewCenter.layer.borderColor=[UIColor colorWithHexString:@"C7C7C8"].CGColor;
        [_scrollView addSubview:_viewCenter];
        
        _openZhi=[OpenButton new];
        [_openZhi setIconHead:@"icon_state_nol" IconFoot:@"icon_ljkt" title:@"支付宝"];
        [_viewCenter addSubview:_openZhi];
        
        _openWei=[OpenButton new];
        [_openWei setIconHead:@"icon_state_wnol" IconFoot:@"icon_ljkt" title:@"微信"];
        [_viewCenter addSubview:_openWei];
        
        _openBai=[OpenButton new];
        [_openBai setIconHead:@"icon_state_bnol" IconFoot:@"icon_ljkt" title:@"百度钱包"];
        [_viewCenter addSubview:_openBai];
        
        _lablEdition=[UILabel new];
        _lablEdition.text=@"版本号1212";
        _lablEdition.textAlignment=NSTextAlignmentCenter;
        _lablEdition.layer.borderWidth=1;
        _lablEdition.layer.borderColor=[UIColor colorWithHexString:@"C7C7C8"].CGColor;
        [_scrollView addSubview:_lablEdition];
        
        _judegButton=[UIButton new];
        [_judegButton setTitle:@"去评价" forState:UIControlStateNormal];
        [_judegButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_judegButton setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
        _judegButton .contentVerticalAlignment=NSTextAlignmentCenter;
        _judegButton.contentEdgeInsets = UIEdgeInsetsMake(IS_IPHONE4?10:15,0, 0, 0);
        _judegButton.layer.borderWidth=1;
        _judegButton.layer.borderColor=[UIColor colorWithHexString:@"C7C7C8"].CGColor;
        [_scrollView addSubview:_judegButton];
        
        _exitButton=[UIButton new];
        [_exitButton setTitle:@"退出" forState:UIControlStateNormal];
        [_exitButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _exitButton .contentVerticalAlignment=NSTextAlignmentCenter;
        _exitButton.contentEdgeInsets = UIEdgeInsetsMake(IS_IPHONE4?10:15,0, 0, 0);
        _exitButton.layer.borderWidth=1;
        _exitButton.layer.borderColor=[UIColor colorWithHexString:@"C7C7C8"].CGColor;
        [_scrollView addSubview:_exitButton];
    }
    

    return self;
}
-(void)layoutSubviews
{
    [super layoutSubviews];
    _scrollView.contentSize=CGSizeMake(KKWidth, 700);
    [_scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self);
        make.width.equalTo(KKWidth);
        make.height.equalTo(700);
    }];
    [_whileView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(KKWidth);
        make.top.equalTo(_scrollView).offset(10);
        make.height.equalTo(HeightH);
    }];
    [_imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_whileView).offset(15);
        make.width.equalTo(60);
        make.height.equalTo(60);
        make.centerY.equalTo(_whileView.centerY);
    }];
    [_lableName mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_imageView.right).offset(20);
        make.top.equalTo(_imageView.top).offset(10);
        
    }];
    [_lableShop mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_lableName);
        make.top.equalTo(_lableName.bottom).offset(5);
    }];
    [imageRight mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(_whileView).offset(-20);
        make.centerY.equalTo(_whileView.centerY);
        make.width.equalTo(15);
        make.height.equalTo(20);
    }];
    [_viewCenter mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_whileView.bottom).offset(30);
        make.width.equalTo(KKWidth);
        make.height.equalTo(100);
    }];
    [_openZhi mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_viewCenter);
        make.top.equalTo(_viewCenter);
        make.height.equalTo(60);
        make.width.equalTo(KKWidth/3);
    }];
    [_openWei mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_openZhi.right);
        make.top.equalTo(_openZhi);
        make.height.equalTo(60);
        make.width.equalTo(KKWidth/3);
    }];
    [_openBai mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_openWei.right);
        make.top.equalTo(_openZhi);
        make.height.equalTo(60);
        make.width.equalTo(KKWidth/3);
    }];
    [_lablEdition mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_viewCenter.bottom).offset(20);
        make.width.equalTo(KKWidth);
        make.height.equalTo(HeightB);
    }];
    [_judegButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_lablEdition.bottom).offset(20);
        make.width.equalTo(KKWidth);
        make.height.equalTo(HeightB);
    }];
    [_exitButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_judegButton.bottom).offset(20);
        make.width.equalTo(KKWidth);
        make.height.equalTo(HeightB);
    }];

}

@end
