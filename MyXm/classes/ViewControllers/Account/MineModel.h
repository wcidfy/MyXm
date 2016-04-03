//
//  MineModel.h
//  MyXm
//
//  Created by lxx on 16/1/23.
//  Copyright © 2016年 lxx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MineModel : NSObject
/**
 *  头像
 */
@property(nonatomic,strong)NSString *imageStr;
/**
 *  姓名
 */
@property(nonatomic,strong)NSString *nameStr;
/**
 *  电话号码
 */
@property(nonatomic,strong)NSString *phoneStr;
/**
 *  帐号级别
 */
@property(nonatomic,strong)NSString *rankStr;
/**
 *  邮箱
 */
@property(nonatomic,strong)NSString *emailStr;
/**
 *  门店
 */
@property(nonatomic,strong)NSString *shopStr;
/**
 *  公司
 */
@property(nonatomic,strong)NSString *companyStr;
/**
 *  地址
 */
@property(nonatomic,strong)NSString *addressStr;

@end
