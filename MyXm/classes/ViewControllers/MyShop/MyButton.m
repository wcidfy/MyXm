//
//  MyButton.m
//  MyXm
//
//  Created by lxx on 16/1/22.
//  Copyright © 2016年 lxx. All rights reserved.
//

#import "MyButton.h"

@implementation MyButton
-(instancetype)initWithFrame:(CGRect)frame
{
    self=[super initWithFrame:frame];
    if (self) {
        _Image=[UIImageView new];
        [self addSubview:_Image];
        
        _Lable=[UILabel new];
//        _Lable.textColor=[UIColor blackColor];
        [_Lable setFont:[UIFont systemFontOfSize:16]];
        [self addSubview:_Lable];
       
    }

    return self;

}
-(void)SetIMageStr:(NSString *)image title:(NSString *)Title color:(NSString *)Color

{
    _Image.image=[UIImage imageNamed:image];
    _Lable.text=Title;
    _Lable.textColor=[UIColor colorWithHexString:Color];

}
-(void)layoutSubviews
{

    [super layoutSubviews];
    [_Image mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.centerY).offset(IS_IPHONE4?-10:-20);
        make.centerX.equalTo(self.centerX);
        make.width.equalTo(30);
        make.height.equalTo(30);
    }];
    
    [_Lable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_Image.bottom).offset(10);
        make.centerX.equalTo(self);
    }];
}
@end
