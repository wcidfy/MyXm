//
//  OpenButton.m
//  MyXm
//
//  Created by lxx on 16/1/23.
//  Copyright © 2016年 lxx. All rights reserved.
//

#import "OpenButton.h"

@implementation OpenButton

-(instancetype)initWithFrame:(CGRect)frame
{
    self=[super initWithFrame:frame];
    if (self) {
        _iconHead=[UIImageView new];
        [self addSubview:_iconHead];
        
        _lableText=[UILabel new];
        _lableText.text=@"支付宝";
        [self addSubview:_lableText];
        
        _iconFoot=[UIImageView new];
        [self addSubview:_iconFoot];
    }
    return self;
}
-(void)layoutSubviews
{
    [super layoutSubviews];
    [_iconHead mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.centerX);
        make.top.equalTo(self).offset(10);
        make.width.equalTo(30);
        make.height.equalTo(30);
    }];
    [_lableText mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.centerX);
        make.top.equalTo(_iconHead.bottom).offset(5);
    }];
    [_iconFoot mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.centerX);
        make.top.equalTo(_lableText.bottom).offset(5);
        make.width.equalTo(50);
        make.height.equalTo(20);
    }];



}
-(void)setIconHead:(NSString *)iconHead IconFoot:(NSString *)iconFoot title:(NSString *)lableText
{
    _iconHead.image=[UIImage imageNamed:iconHead];
    _iconFoot.image=[UIImage imageNamed:iconFoot];
    _lableText.text=lableText;


}

@end
