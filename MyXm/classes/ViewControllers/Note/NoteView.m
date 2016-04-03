//
//  NoteView.m
//  MyXm
//
//  Created by lxx on 16/1/23.
//  Copyright © 2016年 lxx. All rights reserved.
//

#import "NoteView.h"

@implementation NoteView


-(instancetype)initWithFrame:(CGRect)frame
{
    self=[super initWithFrame:frame];
    if (self) {
        _redView=[UIView new];
        _redView.backgroundColor=[UIColor colorWithHexString:@"F85E5B"];
        [self addSubview:_redView];
        
        _leftButton=[UIButton new];
        [_redView addSubview:_leftButton];
        
        _timeButton=[UIButton new];
        [_timeButton setTitle:@"时间显示" forState:UIControlStateNormal];
        [_redView addSubview:_timeButton];
        
        _rightButton=[UIButton new];
        [_redView addSubview:_rightButton];
        
        lableMoneyAll=[UILabel new];
        lableMoneyAll.text=@"总金额（元）";
        lableMoneyAll.textColor=[UIColor whiteColor];
        [lableMoneyAll setFont:[UIFont systemFontOfSize:14]];
        [_redView addSubview:lableMoneyAll];
        
        _lableText=[UILabel new];
        _lableText.text=@"1231342432";
        _lableText.textColor=[UIColor whiteColor];
        [_lableText setFont:[UIFont systemFontOfSize:26]];
        [_redView addSubview:_lableText];
        
        _leftView=[UIView new];
        _leftView.backgroundColor=[UIColor colorWithHexString:@"F85E5B"];
        [self addSubview:_leftView];
        
        _rightView=[UIView new];
        _rightView.backgroundColor=[UIColor colorWithHexString:@"F85E5B"];
        [self addSubview:_rightView];
        
        lableSR=[UILabel new];
        lableSR.text=@"总收入";
        [lableSR setFont:[UIFont systemFontOfSize:12]];
        lableSR.textColor=[UIColor whiteColor];
        [_leftView addSubview:lableSR];
        
        _lableLeft=[UILabel new];
        _lableLeft.text=@"1212";
        _lableLeft.textColor=[UIColor whiteColor];
        [_leftView addSubview:_lableLeft];
        
        lableZH=[UILabel new];
        lableZH.text=@"总支出";
        [lableZH setFont:[UIFont systemFontOfSize:12]];
        lableZH.textColor=[UIColor whiteColor];
        [_rightView addSubview:lableZH];
        
        _lableRight=[UILabel new];
        _lableRight.text=@"1212";
        _lableRight.textColor=[UIColor whiteColor];
        [_rightView addSubview:_lableRight];
        
        _tableView=[[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStyleGrouped];
        [self addSubview:_tableView];
        
        _recordButton=[UIButton new];
        [_recordButton setTitle:@"记一笔" forState:UIControlStateNormal];
        _recordButton.backgroundColor=[UIColor colorWithHexString:@"F85E5B"];
        [self addSubview:_recordButton];

    }


    return self;

}
-(void)layoutSubviews
{
    [super layoutSubviews];
    [_redView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self);
        make.width.equalTo(KKWidth);
        make.height.equalTo(80);
        make.top.equalTo(self);
    }];
    [_timeButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(_redView.centerX);
        
    }];
    
    [lableMoneyAll mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(_redView.centerY);
        make.left.equalTo(_redView.left).offset(20);
    }];
    [_lableText mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(_redView.centerX);
        make.top.equalTo(lableMoneyAll.bottom);
    }];
    [_leftView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_redView);
        make.top.equalTo(_redView.bottom).offset(1);
        make.width.equalTo((KKWidth-1)/2);
        make.height.equalTo(50);
    }];
    [_rightView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_leftView.right).offset(1);
        make.top.equalTo(_leftView);
        make.width.equalTo((KKWidth-1)/2);
        make.height.equalTo(50);
    }];
    [lableSR mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_leftView.left).offset(20);
        make.top.equalTo(_leftView.top).offset(10);
    }];
    [_lableLeft mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(_leftView.centerX);
        make.top.equalTo(lableSR.bottom);
    }];
    [lableZH mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(lableSR.top);
        make.left.equalTo(_rightView.left).offset(20);
    }];
    
    [_lableRight mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(_rightView.centerX);;
        make.top.equalTo(_lableLeft);
    }];
    [_tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_leftView.bottom);
        make.width.equalTo(KKWidth);
        make.bottom.equalTo(self).offset(-100);
    }];
    
    [_recordButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_tableView.bottom).offset(5);
        make.width.equalTo(KKWidth-40);
        make.height.equalTo(40);
        make.left.equalTo(_tableView.left).offset(20);
    }];
    
    
    
    
    
   }


@end
