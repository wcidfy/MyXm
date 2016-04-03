//
//  MineView.m
//  MyXm
//
//  Created by lxx on 16/1/23.
//  Copyright © 2016年 lxx. All rights reserved.
//

#import "MineView.h"

@implementation MineView


-(instancetype)initWithFrame:(CGRect)frame
{
    self=[super initWithFrame:frame];
    if (self) {
        _tableView=[[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStyleGrouped];
        [self addSubview:_tableView];
        [self getArray];
    }
    
    
    
    return  self;
}
-(void)layoutSubviews
{
    [super layoutSubviews];
    [_tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self);
        make.top.equalTo(self);
        make.width.equalTo(KKWidth);
        make.height.equalTo(KKHeight);
    }];
    
    
    
}
-(void)getArray
{
    _dateArray=[[NSMutableArray alloc]init];
    NSMutableArray *date1=[[NSMutableArray alloc]init];
    NSMutableArray *date2=[[NSMutableArray alloc]init];
    [date1 addObject:@"头像"];
    [date1 addObject:@"名字"];
    [date1 addObject:@"修改密码"];
    [date1 addObject:@"联系方式"];
    [date1 addObject:@"帐号级别"];
    
    [date2 addObject:@"企业支付宝帐号"];
    [date2 addObject:@"门店"];
    [date2 addObject:@"所属商家"];
    [date2 addObject:@"商家地址"];
    [self.dateArray addObject:date1];
    [self.dateArray addObject:date2];
}

@end
