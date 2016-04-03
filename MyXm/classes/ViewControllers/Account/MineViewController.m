//
//  MineViewController.m
//  MyXm
//
//  Created by lxx on 16/1/23.
//  Copyright © 2016年 lxx. All rights reserved.
//

#import "MineViewController.h"
#import "MineView.h"
#import "AccountViewController.h"
@interface MineViewController ()
@property(nonatomic,strong)MineView *mineView;
//@property(nonatomic,strong)NSMutableArray *dateArray;
@property(nonatomic,strong)NSMutableArray *tableDateArray;

@end

@implementation MineViewController
-(void)loadView
{
    _mineView=[MineView new];
    self.view =_mineView;
  
   _tableDateArray=_mineView.dateArray;
  

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self TableView];
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithTitle:@"GoBack" style:UIBarButtonItemStyleDone target:self action:@selector(goBackClick)];
   
}
-(void)goBackClick
{
  
    [self.navigationController popViewControllerAnimated:YES];
   
}
-(void)TableView
{

    _mineView.tableView.delegate=self;
    _mineView.tableView.dataSource=self;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//-(void)getArray
//{
//    NSMutableArray *date1=[[NSMutableArray alloc]init];
//    NSMutableArray *date2=[[NSMutableArray alloc]init];
//    [date1 addObject:@"头像"];
//    [date1 addObject:@"名字"];
//    [date1 addObject:@"修改密码"];
//    [date1 addObject:@"联系方式"];
//    [date1 addObject:@"帐号级别"];
//    
//    [date2 addObject:@"企业支付宝帐号"];
//     [date2 addObject:@"门店"];
//     [date2 addObject:@"所属商家"];
//     [date2 addObject:@"商家地址"];
//    [self.dateArray addObject:date1];
//    [self.dateArray addObject:date2];
//
//}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return  [self.tableDateArray[section] count ];
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.tableDateArray.count;


}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellId=@"cellid";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellId];
    if (cell==nil) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellId];
    }
    NSArray *arr=self.tableDateArray[indexPath.section];
    cell.textLabel.text=arr[indexPath.row];
   
    return cell;

}
@end
