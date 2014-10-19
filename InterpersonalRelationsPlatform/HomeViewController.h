//
//  HomeViewController.h
//  HowlBlogger
//
//  Created by Ibokan on 14-10-17.
//  Copyright (c) 2014年 Ibokan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,UIScrollViewDelegate>
{
     UITableView *aTableView,*bTableView,*cTableView;
    UIScrollView *aScrollView,*bScrollView;
}
//@property(retain,nonatomic)IBOutlet UIScrollView *scollView;

@end
