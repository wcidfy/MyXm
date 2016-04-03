//
//  RememberViewController.m
//  MyXm
//
//  Created by lxx on 16/1/23.
//  Copyright © 2016年 lxx. All rights reserved.
//

#import "RememberViewController.h"
#import "RememberView.h"
@interface RememberViewController ()<UIActionSheetDelegate,UINavigationControllerDelegate,UIImagePickerControllerDelegate>
{
    UIImagePickerController *_contr;

}
@property(nonatomic,strong)RememberView *rememberView;
@end

@implementation RememberViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //显示相册
    _contr = [[UIImagePickerController alloc] init];
    //设置类型
    _contr.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    //设置代理
    _contr.delegate = self;
    [self noteClick];
    
}
-(void)loadView
{
    _rememberView=[RememberView new];
    self.view=_rememberView;
    self.title=@"记一笔";
    self.view.backgroundColor=[UIColor grayColor];
    
    
}
#pragma mark  button 点击方法
-(void)noteClick
{
    [_rememberView.cancelNotes addTarget:self action:@selector(cancelClick) forControlEvents:UIControlEventTouchUpInside];
    
    [_rememberView.aginNotes addTarget:self action:@selector(aginClick) forControlEvents:UIControlEventTouchUpInside];
}
#pragma mark  点击记一笔

-(void)cancelClick
{

    NSLog(@"点击记一笔");
    UIActionSheet *action=[[UIActionSheet alloc]initWithTitle:nil delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:@"拍照" otherButtonTitles:@"相册", nil];
    action.actionSheetStyle=UIPreviewActionStyleDefault;
    [action showInView:self.view];
}

#pragma mark 点击再记一笔

-(void)aginClick
{

    NSLog(@"点击再记一笔");

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma  mark 照相代理方法
-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [picker dismissViewControllerAnimated:YES completion:nil];

}
-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info
{


    [picker dismissViewControllerAnimated:YES completion:nil];

}
-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex

{

    if (buttonIndex==0) {
        NSLog(@"拍照");
        _contr.sourceType= UIImagePickerControllerSourceTypeCamera;
        [self presentViewController:_contr animated:YES completion:nil];
    }else if(buttonIndex==1)
    {
        _contr.sourceType= UIImagePickerControllerSourceTypePhotoLibrary;
        [self presentViewController:_contr animated:YES completion:nil];
    
    }

}
@end
