//
//  XNTabBarViewController.h
//  DoctorAssistant
//
//  Created by Ibokan on 14-10-11.
//  Copyright (c) 2014年 Ibokan. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface XNTabBarViewController : UITabBarController
{
    UIView *myView; //自定义的覆盖原先的tarbar的控件
}

@property (nonatomic, weak) UIButton *selectedBtn;

@end
