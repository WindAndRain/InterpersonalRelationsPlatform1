//
//  XNTabBarViewController.m
//  DoctorAssistant
//
//  Created by Ibokan on 14-10-11.
//  Copyright (c) 2014年 Ibokan. All rights reserved.
//

#import "XNTabBarViewController.h"


@interface XNTabBarViewController ()

@end

@implementation XNTabBarViewController
@synthesize selectedBtn;


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
    // Do any additional setup after loading the view.
    
    //删除现有的tabBar
//    CGRect rect = self.tabBar.frame;
    [self.tabBar removeFromSuperview];  //移除TabBarController自带的下部的条
    
    //测试添加自己的视图
    myView = [[UIView alloc] initWithFrame:CGRectMake(0, [UIScreen mainScreen].bounds.size.height-49, [UIScreen mainScreen].bounds.size.width, 49)];
//    myView.frame = rect;
    myView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:myView];
    
    NSArray *selectedImage = [[NSArray alloc] initWithObjects:[UIImage imageNamed:@"btn_maintab_home_press@2x.png"],[UIImage imageNamed:@"btn_maintab_message_press@2x.png"],[UIImage imageNamed:@"btn_maintab_explore_press@2x.png"],[UIImage imageNamed:@"btn_maintab_me_male_press@2x.png"], nil];
    NSArray *normalImage = [[NSArray alloc] initWithObjects:[UIImage imageNamed:@"btn_maintab_home_nor@2x.png"],[UIImage imageNamed:@"btn_maintab_message_nor@2x.png"],[UIImage imageNamed:@"btn_maintab_explore_nor@2x.png"],[UIImage imageNamed:@"btn_maintab_me_male_nor@2x.png"], nil];
    
    NSArray *titleArr = [NSArray arrayWithObjects:@"主页",@"消息",@"广场",@"资料", nil];
    
    int j = 4;
    for (int i = 0; i < j; i++) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        UILabel *lab = [[UILabel alloc] init];
        
        [btn setImage:[normalImage objectAtIndex:i] forState:UIControlStateNormal];
        [btn setImage:[selectedImage objectAtIndex:i] forState:UIControlStateSelected];
        
        [lab setText:[titleArr objectAtIndex:i]];
        
        CGFloat x = i * myView.frame.size.width / j;
        btn.frame = CGRectMake(x, 0, myView.frame.size.width / j, myView.frame.size.height);
        lab.frame = CGRectMake(x+31, myView.frame.size.height-15, myView.frame.size.width / j, 15);
        lab.font = [UIFont systemFontOfSize:9];
        [myView addSubview:btn];
        [myView addSubview:lab];
        
        btn.tag = i;//设置按钮的标记, 方便来索引当前的按钮,并跳转到相应的视图
        
        //带参数的监听方法记得加"冒号"
        [btn addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchUpInside];
        
        //设置刚进入时,第一个按钮为选中状态
        if (0 == i) {
            btn.selected = YES;
            self.selectedBtn = btn;  //设置该按钮为选中的按钮
        }
    }
}

/**
 *  自定义TabBar的按钮点击事件
 */
- (void)clickBtn:(UIButton *)button {
    //1.先将之前选中的按钮设置为未选中
    self.selectedBtn.selected = NO;
    //2.再将当前按钮设置为选中
    button.selected = YES;
    //3.最后把当前按钮赋值为之前选中的按钮
    self.selectedBtn = button;
    
    //4.跳转到相应的视图控制器. (通过selectIndex参数来设置选中了那个控制器)
    self.selectedIndex = button.tag;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
