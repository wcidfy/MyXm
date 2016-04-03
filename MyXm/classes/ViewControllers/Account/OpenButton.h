//
//  OpenButton.h
//  MyXm
//
//  Created by lxx on 16/1/23.
//  Copyright © 2016年 lxx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OpenButton : UIControl

@property(nonatomic,strong)UIImageView *iconHead;
@property(nonatomic,strong)UILabel *lableText;
@property(nonatomic,strong)UIImageView *iconFoot;
-(void)setIconHead:(NSString *)iconHead IconFoot:(NSString *)iconFoot title:(NSString *)lableText;
@end
