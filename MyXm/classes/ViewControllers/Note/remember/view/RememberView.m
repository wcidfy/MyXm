//
//  RememberView.m
//  MyXm
//
//  Created by lxx on 16/1/23.
//  Copyright © 2016年 lxx. All rights reserved.
//

#import "RememberView.h"
#define LableW 80
#define LableH 50
@implementation RememberView

-(instancetype)initWithFrame:(CGRect)frame
{

    self=[super initWithFrame:frame];

    if (self) {
        _whileView=[UIView new];
        _whileView.backgroundColor=[UIColor lightGrayColor];
        [self addSubview:_whileView];
       
        classView=[self getView];
        [self addSubview:classView];
        
        
        lableClass=[self getlable];
        lableClass.text=@"类别";
//        lableClass.backgroundColor=[UIColor whiteColor];
        [classView addSubview:lableClass];
        _classField=[self getTextField];
        _classField.placeholder=@"请选择类别";
        [classView addSubview:_classField];
        
        moneyView=[self getView];
        [self addSubview:moneyView];
        lableMoney=[self getlable];
        lableMoney.text=@"金额";
        [moneyView addSubview:lableMoney];
        _moneyField=[self getTextField];
        _moneyField.placeholder=@"请选择金额";
        [moneyView addSubview:_moneyField];
        
        receiptView=[self getView];
        [self addSubview:receiptView];
        lableReceipt=[self getlable];
        lableReceipt.text=@"收据";
        [receiptView addSubview:lableReceipt];
        _receiptField=[self getTextField];
        _receiptField.placeholder=@"请选择收据";
        [receiptView addSubview:_receiptField];
        
        
        
        payView=[self getView];
        [self addSubview:payView];
        lablePay=[self getlable];
        lablePay.text=@"支付方式";
        [payView addSubview:lablePay];
        _payField=[self getTextField];
        _payField.placeholder=@"请选择支付方式";
        [payView addSubview:_payField];
        
        
        remarkView=[self getView];
        [self addSubview:remarkView];
        lableRemark=[self getlable];
        lableRemark.text=@"备注";
        [remarkView addSubview:lableRemark];
        _remarkField=[self getTextField];
        _remarkField.placeholder=@"请填写备注";
        [remarkView addSubview:_remarkField];
        
        _aginNotes=[self getBut];
        [self addSubview:_aginNotes];
        [_aginNotes setTitle:@"再记一笔" forState:UIControlStateNormal];
        
        _cancelNotes=[self getBut];
        [self addSubview:_cancelNotes];
        [_cancelNotes setTitle:@"记一笔" forState:UIControlStateNormal];
        
    }
    return self;

}
-(void)layoutSubviews
{
    [super layoutSubviews];
    [_whileView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self);
        make.left.equalTo(self);
        make.height.equalTo(30);
        make.width.equalTo(KKWidth);
        
    }];
    [classView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_whileView.bottom);
        make.width.equalTo(KKWidth);
        make.height.equalTo(LableH);
    }];
    [lableClass mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(classView);
        make.left.equalTo(classView);
        make.width.equalTo(LableW);
        make.height.equalTo(LableH);
    }];
    [_classField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(lableClass.right);
        make.top.equalTo(lableClass.top);
        make.height.equalTo(LableH);
        
    }];
    [moneyView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(classView.bottom).offset(1);
        make.left.equalTo(classView);
        make.width.equalTo(KKWidth);
        make.height.equalTo(LableH);
    }];
    
    [lableMoney mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(moneyView);
        make.left.equalTo(moneyView);
        make.width.equalTo(LableW);
        make.height.equalTo(LableH);
    }];
    [_moneyField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(lableMoney.right);
        make.top.equalTo(lableMoney.top);
        make.height.equalTo(LableH);
        
    }];

    [receiptView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(moneyView.bottom).offset(1);
        make.left.equalTo(classView);
        make.width.equalTo(KKWidth);
        make.height.equalTo(LableH);
    }];
    [lableReceipt mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(receiptView);
        make.left.equalTo(receiptView);
        make.width.equalTo(LableW);
        make.height.equalTo(LableH);
    }];
    [_receiptField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(lableReceipt.right);
        make.top.equalTo(lableReceipt.top);
        make.height.equalTo(LableH);
        
    }];
    [payView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(receiptView.bottom).offset(1);
        make.left.equalTo(classView);
        make.width.equalTo(KKWidth);
        make.height.equalTo(LableH);
    }];
    [lablePay mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(payView);
        make.left.equalTo(payView);
        make.width.equalTo(LableW);
        make.height.equalTo(LableH);
    }];
    [_payField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(lablePay.right);
        make.top.equalTo(lablePay.top);
        make.height.equalTo(LableH);
        
    }];
    [remarkView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(payView.bottom).offset(1);
        make.left.equalTo(classView);
        make.width.equalTo(KKWidth);
        make.height.equalTo(LableH);
    }];
    [lableRemark mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(remarkView);
        make.left.equalTo(remarkView);
        make.width.equalTo(LableW);
        make.height.equalTo(LableH);
    }];
    [_remarkField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(lableRemark.right);
        make.top.equalTo(lableRemark.top);
        make.height.equalTo(LableH);
        
    }];
    [_aginNotes mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(20);
        make.top.equalTo(_remarkField.bottom).offset(50);
        make.width.equalTo((KKWidth-80)/2);
        make.height.equalTo(LableH);
    }];
    [_cancelNotes mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(-20);
        make.top.equalTo(_remarkField.bottom).offset(50);
        make.width.equalTo((KKWidth-80)/2);
        make.height.equalTo(LableH);
    }];

}
-(UILabel *)getlable
{
    UILabel *la=[UILabel new];
    la.backgroundColor=[UIColor whiteColor];
    la.textAlignment=NSTextAlignmentCenter;

    return la;
}
-(UIView *)getView
{
    UIView *v=[UIView new];
    v.backgroundColor=[UIColor whiteColor];
    return v;


}
-(UITextField *)getTextField
{
    UITextField *tF=[UITextField new];
    return tF;


}
-(UIButton *)getBut
{

    UIButton *btn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.backgroundColor=[UIColor orangeColor];
    btn.layer.cornerRadius=8;
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    return btn;


}
@end
