//
//  NoteView.h
//  MyXm
//
//  Created by lxx on 16/1/23.
//  Copyright © 2016年 lxx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NoteView : UIView
{
    UILabel *lableMoneyAll;
    UILabel *lableSR;
    UILabel *lableZH;
}
/**
 *  红色的View
 */
@property(nonatomic,strong)UIView *redView;
/**
 *  左边的按钮
 */
@property(nonatomic,strong)UIButton *leftButton;
/**
 *  时间显示按钮
 */
@property(nonatomic,strong)UIButton *timeButton;
/**
 *  右边的按钮
 */
@property(nonatomic,strong)UIButton *rightButton;
/**
 *  总金额文本现实
 */
@property(nonatomic,strong)UILabel *lableText;
/**
 *  左边的view（总收入）
 */
@property(nonatomic,strong)UIView *leftView;
/**
 *  右边的view（总支出）
 */
@property(nonatomic,strong)UIView *rightView;
/**
 *  左边的view中的文本
 */
@property(nonatomic,strong)UILabel *lableLeft;
/**
 *  右边view中的文本
 */
@property(nonatomic,strong)UILabel *lableRight;
/**
 *  tableview
 */
@property(nonatomic,strong)UITableView *tableView;
/**
 *  记一笔
 */
@property(nonatomic,strong)UIButton *recordButton;

@end
