//
//  HomeViewController.m
//  HowlBlogger
//
//  Created by Ibokan on 14-10-17.
//  Copyright (c) 2014年 Ibokan. All rights reserved.
//

#import "HomeViewController.h"
//第三方下拉刷新
#import "MJRefresh.h"
#import "SendEmailsViewController.h"


@interface HomeViewController ()

@end

@implementation HomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    aTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 30, 320, [UIScreen mainScreen].bounds.size.height) style:UITableViewStylePlain];
    aTableView.delegate = self;
    aTableView.dataSource = self;
    [self.view addSubview:aTableView];
    
    [self setupRefresh];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 0, 30, 30);
    [btn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
    [btn setBackgroundImage:[UIImage imageNamed:@"1A~5_MH$YN5JYA9R[BZFCLV.png"] forState:UIControlStateNormal];
    UIBarButtonItem *btnbar = [[UIBarButtonItem alloc]initWithCustomView:btn];
    self.navigationItem.rightBarButtonItem = btnbar;
}

-(void)btnAction:(id)sender
{
    SendEmailsViewController *sendEmails = [[SendEmailsViewController alloc]init];
    sendEmails.modalPresentationStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:sendEmails animated:YES completion:^{
        
    }];
}

//下拉刷新
-(void)setupRefresh
{
    [aTableView addHeaderWithTarget:self action:@selector(headerRereshing)];
    //（设置一进界面自动刷新--5行）
    [aTableView headerBeginRefreshing];
}
-(void)headerRereshing
{
    // 1.添加(假)数据 设置刷新多少行(5行)
//    for (int i=0; i<5; i++)
//    {
//        [data1 insertObject:RandomData atIndex:0];
//    }
    //2秒后刷新表格
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [aTableView reloadData];//刷新表格
        // (最好在刷新表格后调用)调用endRefreshing可以结束刷新状态
        [aTableView headerEndRefreshing];//放在刷新表格后面
    });
}


//分区
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
//行数
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}
//行高
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0)
    {
        return 40;
    }
    if (indexPath.row == 1)
    {
        return 150;
    }
    return 10;
}
//设置Cell
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"cellMark";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identifier];
    }
    if (indexPath.row == 0)
    {
        //在单元左侧加图片
       // cell.imageView.image=[UIImage imageNamed:@"QQ.png"];
        cell.accessoryType= UITableViewCellAccessoryDisclosureIndicator;
        cell.textLabel.text = @"用户名";
        cell.detailTextLabel.text = @"...来自。。。";
    }
    if (indexPath.row == 1)
    {
         cell=[[NSBundle mainBundle]loadNibNamed:@"aTableViewCell" owner:self options:nil][0];
        //
        UITextView *textView1 = (UITextView *)[cell viewWithTag:1002];
        textView1.userInteractionEnabled = NO;
        //
        UIImageView *imageView1 = (UIImageView *)[cell viewWithTag:1003];
        imageView1.backgroundColor = [UIColor redColor];
        //
        UIButton *btn1 = (UIButton *)[cell viewWithTag:1004];
        [btn1 setBackgroundImage:[UIImage imageNamed:@"ic_like_press_mt@2x.png"] forState:UIControlStateNormal];
        //
        UIButton *btn2 = (UIButton *)[cell viewWithTag:1005];
        [btn2 setBackgroundImage:[UIImage imageNamed:@"btn_twisper_detailview_more_nor@2x.png"] forState:UIControlStateNormal];
        //
        UIButton *btn3 = (UIButton *)[cell viewWithTag:1007];
        [btn3 setBackgroundImage:[UIImage imageNamed:@"icon_more_share_weibo.png"] forState:UIControlStateNormal];
        //
        UILabel *label1 = (UILabel *)[cell viewWithTag:1006];
        label1.text = @"41244";
    }
    
    
    //设置cell的选中效果
    cell.selectionStyle = UITableViewCellSelectionStyleNone;//无
    return cell;
}
//设置区头高度
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 5;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
