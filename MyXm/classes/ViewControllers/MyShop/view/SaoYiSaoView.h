//
//  SaoYiSaoView.h
//  MyXm
//
//  Created by lxx on 16/1/24.
//  Copyright © 2016年 lxx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SaoYiSaoView : UIView
/**
 *  红色的view
 */
@property(nonatomic,strong)UIView *redView;
/**
 *  灰色view
 */
@property(nonatomic,strong)UIView *grayView;
/**
 *  添加备注文本框
 */
@property(nonatomic,strong)UITextField *textField;
/**
 *  计算器显示框
 */
@property(nonatomic,strong)UILabel *numLable;
/**
 *  数字0
 */
@property(nonatomic,strong)UIButton *buttonNum0;
/**
 *  数字1
 */
@property(nonatomic,strong)UIButton *buttonNum1;
/**
 *  数字2
 */
@property(nonatomic,strong)UIButton *buttonNum2;
/**
 *  数字3
 */
@property(nonatomic,strong)UIButton *buttonNum3;
/**
 *  数字4
 */
@property(nonatomic,strong)UIButton *buttonNum4;
/**
 *  数字5
 */
@property(nonatomic,strong)UIButton *buttonNum5;
/**
 *  数字6
 */
@property(nonatomic,strong)UIButton *buttonNum6;
/**
 *  数字7
 */
@property(nonatomic,strong)UIButton *buttonNum7;
/**
 *  数字8
 */
@property(nonatomic,strong)UIButton *buttonNum8;
/**
 *  数字9
 */
@property(nonatomic,strong)UIButton *buttonNum9;
/**
 *  点
 */
@property(nonatomic,strong)UIButton *buttonNumPoint;
/**
 *  加号
 */
@property(nonatomic,strong)UIButton *buttonNumAdd;
/**
 *  删除
 */
@property(nonatomic,strong)UIButton *buttonNumDele;
/**
 *  清空
 */
@property(nonatomic,strong)UIButton *buttonNumClear;
/**
 *  收款
 */
@property(nonatomic,strong)UIButton *buttonNumSK;


@end
