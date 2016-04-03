//
//  AccountView.h
//  MyXm
//
//  Created by lxx on 16/1/23.
//  Copyright © 2016年 lxx. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OpenButton.h"

@interface AccountView : UIView<UIScrollViewDelegate>
{
    
    /**
     *  右箭头
     */
    UIImageView *imageRight;
    


}
/**
 *  滚动视图
 */
@property(nonatomic,strong)UIScrollView *scrollView;
/**
 *  白色视图
 */
@property(nonatomic,strong)UIView *whileView;
/**
 *  头像
 */
@property(nonatomic,strong)UIImageView *imageView;
/**
 *  用户名
 */
@property(nonatomic,strong)UILabel *lableName;
/**
 *  店名 权限
 */
@property(nonatomic,strong)UILabel *lableShop;
/**
 *  中间视图
 */
@property(nonatomic,strong)UIView *viewCenter;


/**
 *  支付宝
 */
@property(nonatomic,strong)OpenButton *openZhi;
/**
 *  微信
 */
@property(nonatomic,strong)OpenButton *openWei;
/**
 *  百度钱包
 */
@property(nonatomic,strong)OpenButton *openBai;
/**
 *  版本号
 */
@property(nonatomic,strong)UILabel *lablEdition;
/**
 *  去评价
 */
@property(nonatomic,strong)UIButton *judegButton;
/**
 *  退出
 */
@property(nonatomic,strong)UIButton *exitButton;
@end
