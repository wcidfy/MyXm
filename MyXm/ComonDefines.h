//
//  ComonDefines.h
//  MyXm
//
//  Created by lxx on 16/1/20.
//  Copyright © 2016年 lxx. All rights reserved.
//

#ifndef ComonDefines_h
#define ComonDefines_h
#define  XXWidth     self.view.bounds.size.width
#define XXHeight self.view.bounds.size.height
#define KKWidth self.bounds.size.width
#define KKHeight self.bounds.size.height
#import"SDiPhoneVersion.h"
#import "HexColor.h"
#import "Masonry.h"
// 屏幕判定
#define IS_IPHONE4  ([SDiPhoneVersion deviceSize] == iPhone35inch ? YES : NO)
#define IS_IPHONE5  ([SDiPhoneVersion deviceSize] == iPhone4inch ? YES : NO)
#define IS_IPHONE6  ([SDiPhoneVersion deviceSize] == iPhone47inch ? YES : NO)
#define IS_IPHONE6P ([SDiPhoneVersion deviceSize] == iPhone55inch ? YES : NO)



#endif /* ComonDefines_h */
