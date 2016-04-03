//
//  NoteViewController.m
//  MyXm
//
//  Created by lxx on 16/1/21.
//  Copyright © 2016年 lxx. All rights reserved.
//

#import "NoteViewController.h"
#import "NoteView.h"
#import "RememberViewController.h"
@interface NoteViewController ()
@property(nonatomic,strong)NoteView *noteView;
@end

@implementation NoteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
-(void)loadView
{
    _noteView=[NoteView new];
    self.view=_noteView;
    self.title=@"记录";
    self.view.backgroundColor=[UIColor whiteColor];
    [self tableView];
}
-(void)tableView
{
    _noteView.tableView.delegate=self;
    _noteView.tableView.dataSource=self;
    [_noteView.recordButton addTarget:self action:@selector(recordButtonClick) forControlEvents:UIControlEventTouchUpInside];

}
-(void)recordButtonClick
{

    RememberViewController *remember=[RememberViewController new];
    remember.hidesBottomBarWhenPushed=YES;
    [self.navigationController pushViewController:remember animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return 11;


}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    return 2;

}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if (section==0) {
        return 0.000001;
        
    }else
    {
        return 0;
    }
    
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellId=@"cellId";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:CellId];
    if(cell==nil)
    {
    
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellId];
    }
    cell.textLabel.text=@"12321";
    cell.detailTextLabel.text=@"xzcxcxzcx";
    return cell;
}
@end
