//
//  SaoYiSaoViewController.m
//  MyXm
//
//  Created by lxx on 16/1/24.
//  Copyright © 2016年 lxx. All rights reserved.
//

#import "SaoYiSaoViewController.h"
#import "SaoYiSaoView.h"
@interface SaoYiSaoViewController ()
{
    NSString *Str;
}
@property(nonatomic,strong)SaoYiSaoView *saoYiSaoView;
@end

@implementation SaoYiSaoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self buttonClicks];
}
-(void)loadView
{
    [super loadView];
    _saoYiSaoView=[SaoYiSaoView new];
    self.view=_saoYiSaoView;
    self.view.backgroundColor=[UIColor redColor];


}
-(void)buttonClicks
{
    [_saoYiSaoView.buttonNum0 addTarget:self action:@selector(buttonNum0Click) forControlEvents:UIControlEventTouchUpInside];
     [_saoYiSaoView.buttonNum1 addTarget:self action:@selector(buttonNum1Click) forControlEvents:UIControlEventTouchUpInside];
     [_saoYiSaoView.buttonNum2 addTarget:self action:@selector(buttonNum2Click) forControlEvents:UIControlEventTouchUpInside];
     [_saoYiSaoView.buttonNum3 addTarget:self action:@selector(buttonNum3Click) forControlEvents:UIControlEventTouchUpInside];
     [_saoYiSaoView.buttonNum4 addTarget:self action:@selector(buttonNum4Click) forControlEvents:UIControlEventTouchUpInside];
     [_saoYiSaoView.buttonNum5 addTarget:self action:@selector(buttonNum5Click) forControlEvents:UIControlEventTouchUpInside];
     [_saoYiSaoView.buttonNum6 addTarget:self action:@selector(buttonNum6Click) forControlEvents:UIControlEventTouchUpInside];
     [_saoYiSaoView.buttonNum7 addTarget:self action:@selector(buttonNum7Click) forControlEvents:UIControlEventTouchUpInside];
     [_saoYiSaoView.buttonNum8 addTarget:self action:@selector(buttonNum8Click) forControlEvents:UIControlEventTouchUpInside];
     [_saoYiSaoView.buttonNum9 addTarget:self action:@selector(buttonNum9Click) forControlEvents:UIControlEventTouchUpInside];
    
     [_saoYiSaoView.buttonNumDele addTarget:self action:@selector(buttonNumDeleClick) forControlEvents:UIControlEventTouchUpInside];
    [_saoYiSaoView.buttonNumClear addTarget:self action:@selector(buttonNumClearClick) forControlEvents:UIControlEventTouchUpInside];
    
    [_saoYiSaoView.buttonNumPoint addTarget:self action:@selector(buttonNumPointClick) forControlEvents:UIControlEventTouchUpInside];
    [_saoYiSaoView.buttonNumAdd addTarget:self action:@selector(buttonNumAddClick) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    
}
-(void)buttonNum0Click
{

    NSLog(@"0");
    _saoYiSaoView.numLable.text=@"0";
    
    
   
   

}
-(void)buttonNum1Click
{
    
    NSLog(@"1");
    _saoYiSaoView.numLable.text=@"1";

    
}
-(void)buttonNum2Click
{
    
    NSLog(@"2");
    
    
}
-(void)buttonNum3Click
{
    
    NSLog(@"3");
    
    
}
-(void)buttonNum4Click
{
    
    NSLog(@"4");
    
    
}
-(void)buttonNum5Click
{
    
    NSLog(@"5");
    
    
}
-(void)buttonNum6Click
{
    
    NSLog(@"6");
    
    
}
-(void)buttonNum7Click
{
    
    NSLog(@"7");
    
    
}
-(void)buttonNum8Click
{
    
    NSLog(@"8");
    
    
}
-(void)buttonNum9Click
{
    
    NSLog(@"9");
    
    
}
-(void)buttonNumDeleClick
{
    
    NSLog(@"删除");
    
    
}
-(void)buttonNumClearClick
{
    NSLog(@"清空");

}
-(void)buttonNumPointClick
{
    NSLog(@"点");

}
-(void)buttonNumAddClick
{
    NSLog(@"加");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
