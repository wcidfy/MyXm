//
//  ViewController.m
//  MyXm
//
//  Created by lxx on 16/1/19.
//  Copyright © 2016年 lxx. All rights reserved.
//

#import "ViewController.h"
#import "NewEdition.h"
#import "XXTabBarController.h"
#define  Height 40
@interface ViewController ()
@property(nonatomic,strong)UITextField *UserName;
@property(nonatomic,strong)UITextField *UserPass;
@property(nonatomic,strong)UIButton *LogBut;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self creatUI];
}
-(void)creatUI
{
    self.title=@"sdsdsdsd";
     self.view.backgroundColor=[UIColor whiteColor];
//    用户名
    UILabel *lableName=[UILabel new];
    lableName.text=@"用户";
    [self.view addSubview:lableName];
    [lableName makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.view.centerY).offset(-100);
        make.left.equalTo(self.view.left).offset(20);
        make.width.equalTo(40);
        make.height.equalTo(Height);
    }];
    
    _UserName=[UITextField new];
    _UserName.placeholder=@"请输入用户名";
      [self.view addSubview:_UserName];
    [_UserName makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(lableName.right).offset(40);
        make.top.equalTo(lableName.top);
        make.width.equalTo(XXWidth-80);
        make.height.equalTo(Height);
    }];
    UILabel *line=[UILabel new];
    line.backgroundColor=[UIColor lightGrayColor];
    [self.view addSubview:line];
    [line makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_UserName.bottom);
        make.height.equalTo(1);
        make.left.equalTo(lableName.left);
        make.width.equalTo(XXWidth-40);
    }];
//    密码
    UILabel *lablePass=[UILabel new];
    lablePass.text=@"密码";
    [self.view addSubview:lablePass];
    [lablePass makeConstraints:^(MASConstraintMaker *make) {
       
        make.top.equalTo(line.bottom);
        make.left.equalTo(self.view.left).offset(20);
        make.width.equalTo(40);
        make.height.equalTo(Height);
    }];
    _UserPass=[UITextField new];
    _UserPass.placeholder=@"请输入密码";
    [self.view addSubview:_UserPass];
    [_UserPass makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(lablePass.right).offset(40);
        make.top.equalTo(lablePass.top);
        make.width.equalTo(XXWidth-80);
        make.height.equalTo(Height);
    }];
    UILabel *line1=[UILabel new];
    line1.backgroundColor=[UIColor lightGrayColor];
    [self.view addSubview:line1];
    [line1 makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_UserPass.bottom);
        make.height.equalTo(1);
        make.left.equalTo(lablePass.left);
        make.width.equalTo(XXWidth-40);
    }];

   
//    登录按钮
    _LogBut=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    _LogBut.backgroundColor=[UIColor orangeColor];
    _LogBut.layer.masksToBounds=YES;
    [_LogBut.layer setCornerRadius:8];
    [_LogBut setTitle:@"登陆" forState:UIControlStateNormal];
    [_LogBut addTarget:self action:@selector(LogAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_LogBut];
    [_LogBut makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(20);
        make.right.equalTo(-20);
        make.top.equalTo(lablePass.bottom).offset(Height);
        make.height.equalTo(Height);
    }];

}
-(void)LogAction
{
     NSUserDefaults *use= [NSUserDefaults standardUserDefaults];
    if ([use objectForKey:@"UserName"]!=nil&&[use objectForKey:@"UserPass"]!=nil) {
        NSLog(@"登录成功");
        NewEdition *new=[NewEdition new];
        [self presentViewController:new animated:NO completion:nil];
    }
    else if([_UserPass.text isEqual:@"111"]&&[_UserName.text isEqual:@"111"]) {
        NSLog(@"登录成功");
      
        [use setObject:_UserName.text forKey:@"UserName"];
        [use setObject:_UserPass.text forKey:@"UserPass"];
        XXTabBarController *new=[XXTabBarController new];
         [self presentViewController:new animated:NO completion:nil];
    }


}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
