//
//  HDLTXTwitterAuthorization.m
//  InterpersonalRelationsPlatform
//
//  Created by 3001 on 14/10/18.
//  Copyright (c) 2014年 Ibokan. All rights reserved.
//

#import "HDLTXTwitterAuthorization.h"
#import "WeiboApi.h"

#define WiressSDKDemoAppKey     @"801213517"
#define WiressSDKDemoAppSecret  @"9819935c0ad171df934d0ffb340a3c2d"
#define REDIRECTURI             @"http://www.ying7wang7.com"

@interface HDLTXTwitterAuthorization ()
{
    WeiboApi *wbapi;
}

@property (nonatomic , retain) WeiboApi  *wbapi;

@end

@implementation HDLTXTwitterAuthorization

@synthesize wbapi;

- (instancetype)init {
    self = [super init];
    if(wbapi == nil)
    {
        wbapi = [[WeiboApi alloc]initWithAppKey:WiressSDKDemoAppKey andSecret:WiressSDKDemoAppSecret andRedirectUri:REDIRECTURI andAuthModeFlag:0 andCachePolicy:0] ;
    }
    return self;
}

- (void)loginTXWeibo {
    
    
    [wbapi checkAuthValid:TCWBAuthCheckServer andDelegete:self];
}

#pragma mark 授权成功后的回调
- (void)DidAuthFinished:(WeiboApiObject *)wbobj
{
    NSString *str = [[NSString alloc]initWithFormat:@"accesstoken = %@\r\n openid = %@\r\n appkey=%@ \r\n appsecret=%@ \r\n refreshtoken=%@ ", wbobj.accessToken, wbobj.openid, wbobj.appKey, wbobj.appSecret, wbobj.refreshToken];
    
    NSLog(@"授权成功后的回调result = %@",str);
    
    //注意回到主线程，有些回调并不在主线程中，所以这里必须回到主线程
    dispatch_async(dispatch_get_main_queue(), ^{
        
        //        [self showMsg:str];
    });
    
    
    // NSLog(@"after add pic");
}

@end
