//
//  MyButton.h
//  MyXm
//
//  Created by lxx on 16/1/22.
//  Copyright © 2016年 lxx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyButton : UIControl
{
    UIImageView *_Image;
}
@property(nonatomic,strong)UIImageView *Image;
@property(nonatomic,strong)UILabel  *Lable;
-(void)SetIMageStr:(NSString *)image title:(NSString *)Title  color:(NSString *)Color;
@end
