//
//  DataInterface.h
//  InterpersonalRelationsPlatform
//
//  Created by Ibokan on 14-10-18.
//  Copyright (c) 2014年 Ibokan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WeiboApi.h"

@interface DataInterface : NSObject
{
    WeiboApi   *wbapi;
}

//授权登陆
+(void)login;

@property (nonatomic , retain) WeiboApi  *wbapi;

@end
