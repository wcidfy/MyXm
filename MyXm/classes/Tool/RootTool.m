//
//  RootTool.m
//  MyXm
//
//  Created by lxx on 16/1/21.
//  Copyright © 2016年 lxx. All rights reserved.
//

#import "RootTool.h"
#import "ViewController.h"
#import "NewEdition.h"
#import "XXTabBarController.h"
#define  CZVersionKey @"version"
@implementation RootTool
+(void)ChooseRoot:(UIWindow *)window
{

    // 1.获取当前的版本号
    NSString *currentVersion = [NSBundle mainBundle].infoDictionary[@"CFBundleVersion"];
    
    // 2.获取上一次的版本号
    NSString *lastVersion = [[NSUserDefaults standardUserDefaults] objectForKey:CZVersionKey];
    
    // v1.0
    // 判断当前是否有新的版本
    if ([currentVersion isEqualToString:lastVersion]) { // 没有最新的版本号
        ViewController *v=[ViewController new];
        window.rootViewController=v;
        
    }else{ // 有最新的版本号
        NewEdition *ed=[NewEdition new];
        window.rootViewController=ed;
        [[NSUserDefaults standardUserDefaults] setObject:currentVersion forKey:CZVersionKey];
    }




}

@end
