//
//  HDLHomeViewController.m
//  InterpersonalRelationsPlatform
//
//  Created by 3001 on 14/10/18.
//  Copyright (c) 2014年 Ibokan. All rights reserved.
//

#import "HDLHomeViewController.h"
#import "HDLAvatarImageView.h"// 自定义头像ImageView
#import "HDLTXTwitterAuthorization.h"

#define WEIBOLISTCELL @"HDLWeiboCollectionViewCellIdentifier"

@interface HDLHomeViewController ()
{
    UICollectionView *weiboListCollectionView;// 微博列表
}
@end

@implementation HDLHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSLog(@"1231231");
    
    
    HDLTXTwitterAuthorization *login = [[HDLTXTwitterAuthorization alloc] init];
    [login loginTXWeibo];
    

    
    /*
    HDLAvatarImageView *imageView = [[HDLAvatarImageView alloc] init];
    [imageView setFrame:CGRectMake(30, 30, 30, 30)];
    imageView.image = [UIImage imageNamed:@"disclosure_user_guide_ios7"];
    [self.view addSubview:imageView];*/
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
