//
//  SaoYiSaoView.m
//  MyXm
//
//  Created by lxx on 16/1/24.
//  Copyright © 2016年 lxx. All rights reserved.
//

#import "SaoYiSaoView.h"
#define Spacing 20
@implementation SaoYiSaoView

-(instancetype)initWithFrame:(CGRect)frame
{
    self=[super initWithFrame:frame];
    if (self) {
        _redView=[UIView new];
        _redView.backgroundColor=[UIColor colorWithHexString:@"F85E5B"];
        [self addSubview:_redView];
        _grayView=[UIView new];
        _grayView.backgroundColor=[UIColor lightGrayColor];
        [_redView addSubview:_grayView];
        
        _textField=[UITextField new];
        _textField.placeholder=@"添加备注帮你记一笔交易";
        _textField.textColor=[UIColor whiteColor];
        [_grayView addSubview:_textField];
        
        _numLable=[UILabel new];
        _numLable.text=@"0";
        _numLable.textColor=[UIColor whiteColor];
        [_numLable setFont:[UIFont systemFontOfSize:26]];
        [_grayView addSubview:_numLable];
        
        
        _buttonNum1=[self GetButton];
        [_buttonNum1 setTitle:@"1" forState:UIControlStateNormal];

        [self addSubview:_buttonNum1];
        
        _buttonNum2=[self GetButton];
        [_buttonNum2 setTitle:@"2" forState:UIControlStateNormal];
        
        [self addSubview:_buttonNum2];
        
        _buttonNum3=[self GetButton];
        [_buttonNum3 setTitle:@"3" forState:UIControlStateNormal];
        
        [self addSubview:_buttonNum3];
        
        _buttonNumDele=[self GetButton];
        [_buttonNumDele setTitle:@"删除" forState:UIControlStateNormal];
        
        [self addSubview:_buttonNumDele];
        
        _buttonNum4=[self GetButton];
        [_buttonNum4 setTitle:@"4" forState:UIControlStateNormal];
        
        [self addSubview:_buttonNum4];
        _buttonNum5=[self GetButton];
        [_buttonNum5 setTitle:@"5" forState:UIControlStateNormal];
        
        [self addSubview:_buttonNum5];
        _buttonNum6=[self GetButton];
        [_buttonNum6 setTitle:@"6" forState:UIControlStateNormal];
        
        [self addSubview:_buttonNum6];
        _buttonNumClear=[self GetButton];
        [_buttonNumClear setTitle:@"清空" forState:UIControlStateNormal];
        
        [self addSubview:_buttonNumClear];
        
        _buttonNum7=[self GetButton];
        [_buttonNum7 setTitle:@"7" forState:UIControlStateNormal];
        
        [self addSubview:_buttonNum7];
        _buttonNum8=[self GetButton];
        [_buttonNum8 setTitle:@"8" forState:UIControlStateNormal];
        [self addSubview:_buttonNum8];
        
        _buttonNum9=[self GetButton];
        [_buttonNum9 setTitle:@"9" forState:UIControlStateNormal];
        
        [self addSubview:_buttonNum9];
        
        _buttonNum0=[self GetButton];
        [_buttonNum0 setTitle:@"0" forState:UIControlStateNormal];
        
        [self addSubview:_buttonNum0];
        _buttonNumPoint=[self GetButton];
        [_buttonNumPoint setTitle:@"." forState:UIControlStateNormal];
        
        [self addSubview:_buttonNumPoint];
        
        _buttonNumAdd=[self GetButton];
        [_buttonNumAdd setTitle:@"+" forState:UIControlStateNormal];
        
        [self addSubview:_buttonNumAdd];

        
    }

    return self;

}
-(void)layoutSubviews
{
    [super layoutSubviews];
    [_redView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self);
        make.top.equalTo(self);
        make.width.equalTo(KKWidth);
        make.height.equalTo(120);
    }];
    
    [_grayView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_redView).offset(10);
        make.right.equalTo(_redView).offset(-10);
        make.top.equalTo(_redView).offset(10);
        make.bottom.equalTo(_redView).offset(-10);

    }];
    [_textField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_grayView.left).offset(20);
        make.top.equalTo(_grayView.top).offset(10);
    }];
    
    [_numLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(_grayView.right).offset(-20);
        make.bottom.equalTo(_grayView.bottom).offset(-10);
    }];
    [_buttonNum1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_redView.left).offset(Spacing);
        make.top.equalTo(_redView.bottom).offset(Spacing+10);
        make.width.equalTo((KKWidth-Spacing*5)/4);
        make.height.equalTo((KKWidth-Spacing*5)/4);

    }];
    _buttonNum1.layer.cornerRadius=(KKWidth-Spacing*5)/4/2;
    
    [_buttonNum2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_buttonNum1.right).offset(Spacing);
        make.top.equalTo(_redView.bottom).offset(Spacing+10);
        make.width.equalTo((KKWidth-Spacing*5)/4);
        make.height.equalTo((KKWidth-Spacing*5)/4);
        
    }];
    _buttonNum2.layer.cornerRadius=(KKWidth-Spacing*5)/4/2;
    
    [_buttonNum3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_buttonNum2.right).offset(Spacing);
        make.top.equalTo(_redView.bottom).offset(Spacing+10);
        make.width.equalTo((KKWidth-Spacing*5)/4);
        make.height.equalTo((KKWidth-Spacing*5)/4);
        
    }];
    _buttonNum3.layer.cornerRadius=(KKWidth-Spacing*5)/4/2;

    [_buttonNumDele mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_buttonNum3.right).offset(Spacing);
        make.top.equalTo(_redView.bottom).offset(Spacing+10);
        make.width.equalTo((KKWidth-Spacing*5)/4);
        make.height.equalTo((KKWidth-Spacing*5)/4);
        
    }];
    _buttonNumDele.layer.cornerRadius=(KKWidth-Spacing*5)/4/2;
    
    [_buttonNum4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_buttonNum1.left);
        make.top.equalTo(_buttonNum1.bottom).offset(Spacing/2);
        make.width.equalTo((KKWidth-Spacing*5)/4);
        make.height.equalTo((KKWidth-Spacing*5)/4);
        
    }];
    _buttonNum4.layer.cornerRadius=(KKWidth-Spacing*5)/4/2;
    
    [_buttonNum5 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_buttonNum4.right).offset(Spacing);
        make.top.equalTo(_buttonNum2.bottom).offset(Spacing/2);
        make.width.equalTo((KKWidth-Spacing*5)/4);
        make.height.equalTo((KKWidth-Spacing*5)/4);
        
    }];
    _buttonNum5.layer.cornerRadius=(KKWidth-Spacing*5)/4/2;

    [_buttonNum6 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_buttonNum5.right).offset(Spacing);
        make.top.equalTo(_buttonNum3.bottom).offset(Spacing/2);
        make.width.equalTo((KKWidth-Spacing*5)/4);
        make.height.equalTo((KKWidth-Spacing*5)/4);
        
    }];
    _buttonNum6.layer.cornerRadius=(KKWidth-Spacing*5)/4/2;

    [_buttonNumClear mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_buttonNum6.right).offset(Spacing);
        make.top.equalTo(_buttonNum3.bottom).offset(Spacing/2);
        make.width.equalTo((KKWidth-Spacing*5)/4);
        make.height.equalTo((KKWidth-Spacing*5)/4);
        
    }];
    _buttonNumClear.layer.cornerRadius=(KKWidth-Spacing*5)/4/2;

    
    [_buttonNum7 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_buttonNum4.left);
        make.top.equalTo(_buttonNum4.bottom).offset(Spacing/2);
        make.width.equalTo((KKWidth-Spacing*5)/4);
        make.height.equalTo((KKWidth-Spacing*5)/4);
        
    }];
    _buttonNum7.layer.cornerRadius=(KKWidth-Spacing*5)/4/2;
    
    [_buttonNum8 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_buttonNum7.right).offset(Spacing);
        make.top.equalTo(_buttonNum5.bottom).offset(Spacing/2);
        make.width.equalTo((KKWidth-Spacing*5)/4);
        make.height.equalTo((KKWidth-Spacing*5)/4);
        
    }];
    _buttonNum8.layer.cornerRadius=(KKWidth-Spacing*5)/4/2;

    [_buttonNum9 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_buttonNum8.right).offset(Spacing);
        make.top.equalTo(_buttonNum6.bottom).offset(Spacing/2);
        make.width.equalTo((KKWidth-Spacing*5)/4);
        make.height.equalTo((KKWidth-Spacing*5)/4);
        
    }];
    _buttonNum9.layer.cornerRadius=(KKWidth-Spacing*5)/4/2;
    

    [_buttonNum0 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_buttonNum7.left);
        make.top.equalTo(_buttonNum7.bottom).offset(Spacing/2);
        make.width.equalTo((KKWidth-Spacing*5)/4);
        make.height.equalTo((KKWidth-Spacing*5)/4);
        
    }];
    _buttonNum0.layer.cornerRadius=(KKWidth-Spacing*5)/4/2;
    [_buttonNumPoint mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_buttonNum0.right).offset(Spacing);
        make.top.equalTo(_buttonNum7.bottom).offset(Spacing/2);
        make.width.equalTo((KKWidth-Spacing*5)/4);
        make.height.equalTo((KKWidth-Spacing*5)/4);
        
    }];
    _buttonNumPoint.layer.cornerRadius=(KKWidth-Spacing*5)/4/2;
    [_buttonNumAdd mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_buttonNumPoint.right).offset(Spacing);
        make.top.equalTo(_buttonNum7.bottom).offset(Spacing/2);
        make.width.equalTo((KKWidth-Spacing*5)/4);
        make.height.equalTo((KKWidth-Spacing*5)/4);
        
    }];
    _buttonNumAdd.layer.cornerRadius=(KKWidth-Spacing*5)/4/2;

}
-(UIButton *)GetButton
{
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];

    btn.backgroundColor=[UIColor whiteColor];
    [btn.layer setMasksToBounds:YES];
    [btn.layer setBorderWidth:1];
    btn.layer.borderColor=[UIColor lightGrayColor].CGColor;
    
    

    return btn;
}
@end
