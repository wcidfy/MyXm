//
//  NewEdition.m
//  MyXm
//
//  Created by lxx on 16/1/20.
//  Copyright © 2016年 lxx. All rights reserved.
//

#import "NewEdition.h"
#import "ViewController.h"
@interface NewEdition()
@property(nonatomic,strong)UIScrollView *scrollView;
@property(nonatomic,strong)UIButton *StartBut;
@end
@implementation NewEdition
-(void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    [self CreatUi];

}
-(void)CreatUi
{
    _scrollView=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, XXWidth, XXHeight)];
    _scrollView.delegate=self;
    _scrollView.pagingEnabled=YES;
     _scrollView.contentSize=CGSizeMake(XXWidth*4, XXHeight);
    [self.view addSubview:_scrollView];
    NSString *subDeviceStr = (IS_IPHONE6P ? @"6p" : (IS_IPHONE6 ? @"6" : (IS_IPHONE5 ? @"5s" : @"4s")));

    for(int i=0 ;i<4;i++)
    {
        UIImageView *imageView=[[UIImageView alloc]initWithFrame:CGRectMake(i*XXWidth, 0, XXWidth, XXHeight)];
        imageView.userInteractionEnabled=YES;
        UIImage *ima=[UIImage imageNamed:[NSString stringWithFormat:@"introPage_%@_%d",subDeviceStr, i+1]];
        imageView.image=ima;
        [_scrollView addSubview:imageView];
        
        if (i==3) {
          _StartBut=[UIButton buttonWithType:UIButtonTypeCustom];
            [_StartBut setTitle:@"立即体验" forState:UIControlStateNormal];
            [_StartBut setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
            // btu.backgroundColor=[UIColor redColor];
            [_StartBut addTarget:self action:@selector(UI) forControlEvents:UIControlEventTouchUpInside];
            [imageView addSubview:_StartBut];
            [_StartBut mas_makeConstraints:^(MASConstraintMaker *make) {
                make.centerX.equalTo(imageView.centerX);
                make.centerY.equalTo(imageView.centerY).offset(150);
                make.width.mas_equalTo(imageView.width);
                make.height.mas_equalTo(imageView.height);
            }];
          

        }
    
    }
    


}
-(void)UI
{

    ViewController *v=[ViewController new];
    [self presentViewController:v animated:YES completion:nil];
}
@end
