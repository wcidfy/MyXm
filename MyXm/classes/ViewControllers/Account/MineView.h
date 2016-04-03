//
//  MineView.h
//  MyXm
//
//  Created by lxx on 16/1/23.
//  Copyright © 2016年 lxx. All rights reserved.
//

#import <UIKit/UIKit.h>
/**
 *  我
 */
@interface MineView : UIView
@property(nonatomic,strong)UITableView *tableView;
/**
 *  table 左边数据
 */
@property(nonatomic,strong)NSMutableArray *dateArray;
@end
