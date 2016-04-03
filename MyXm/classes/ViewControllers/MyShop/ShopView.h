//
//  ShopView.h
//  MyXm
//
//  Created by lxx on 16/1/22.
//  Copyright © 2016年 lxx. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyButton.h"
@interface ShopView : UIView<UIScrollViewDelegate>
{
    UILabel *lableHead;
    UIPageControl *pageControl;
}
/**
 *  红色视图
 */
@property(nonatomic,strong)UIView *RedView;

/**
 *  扫码
 */
@property(nonatomic,strong)MyButton *Sweep;
/**
 *  会员充值
 */
@property(nonatomic,strong)MyButton *vipCZ;
/**
 *  会员消费
 */
@property(nonatomic,strong)MyButton *vipXF;
/**
 *  卡卷核销
 */
@property(nonatomic,strong)MyButton *cancelBtn;
/**
 *  退款
 */
@property(nonatomic,strong)MyButton *refundBtn;
/**
 *  账单
 */
@property(nonatomic,strong)MyButton *checkBtn;
/**
 *  滚动视图（总）
 */
@property(nonatomic,strong)UIScrollView *scollView;
/**
 *  中间滚动视图
 */
@property(nonatomic,strong)UIScrollView *scollViewCenter;
/**
 *  金额
 */
@property(nonatomic,strong)UILabel *lableMoney;
/**
 *  几笔
 */
@property(nonatomic,strong)UILabel *lableMoneyNum;

@end
