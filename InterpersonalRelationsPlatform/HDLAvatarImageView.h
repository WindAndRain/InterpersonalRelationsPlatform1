//
//  HDLAvatarImageView.h
//  InterpersonalRelationsPlatform
//
//  Created by 3001 on 14/10/18.
//  Copyright (c) 2014年 Ibokan. All rights reserved.
//
/**
 * 创建:通过alloc创建
 * 圆边:通过重设Frame或alloc决定圆边
 * 用法:
 * 如: HDLAvatarImageView *imageView = [[HDLAvatarImageView alloc] init];
 *       [imageView setFrame:CGRectMake(30, 30, 30, 30)]; // 圆边为:30/2.0
 *        imageView.image = [UIImage imageNamed:@"disclosure_user_guide_ios7"];// 设置图片
 *       [self.view addSubview:imageView];
 */

#import <UIKit/UIKit.h>

@interface HDLAvatarImageView : UIImageView


@end
