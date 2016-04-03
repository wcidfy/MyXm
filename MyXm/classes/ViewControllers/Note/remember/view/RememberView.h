//
//  RememberView.h
//  MyXm
//
//  Created by lxx on 16/1/23.
//  Copyright © 2016年 lxx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RememberView : UIView
{
    /**
     *  日历图片
     */
    UIImageView *ImageView;
    /**
     *  类别
     */
    UIView *classView;
    UILabel *lableClass;
    /**
     *  金额
     */
    UIView *moneyView;
    UILabel *lableMoney;
    /**
     *  收据
     */
    UIView *receiptView;
    UILabel *lableReceipt;
    /**
     *  支付方式
     */
    UILabel *lablePay;
    UIView *payView;

    /**
     *  备注
     */
    UIView *remarkView;
    UILabel *lableRemark;

}
/**
 *  上面的灰色view
 */
@property(nonatomic,strong)UIView *whileView;
/**
 *  时间按钮
 */
@property(nonatomic,strong)UIButton *timeButton;
/**
 *  类别view
 */
@property(nonatomic,strong)UITextField *classField;
/**
 *  金额view
 */
@property(nonatomic,strong)UITextField *moneyField;
/**
 *  收据view
 */
@property(nonatomic,strong)UITextField *receiptField;
/**
 *  支付view
 */
@property(nonatomic,strong)UITextField *payField;
/**
 *  备注view
 */
@property(nonatomic,strong)UITextField *remarkField;
/**
 *  记一笔
 */
@property(nonatomic,strong)UIButton *cancelNotes;
/**
 *  再记一笔
 */
@property(nonatomic,strong)UIButton *aginNotes;

@end
