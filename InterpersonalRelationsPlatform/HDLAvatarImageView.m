//
//  HDLAvatarImageView.m
//  InterpersonalRelationsPlatform
//
//  Created by 3001 on 14/10/18.
//  Copyright (c) 2014年 Ibokan. All rights reserved.
//

#import "HDLAvatarImageView.h"

@implementation HDLAvatarImageView

-(instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self.layer setMasksToBounds:YES];
        [self changeImageRadius:frame];
    }
    return self;
}

- (void)setFrame:(CGRect)frame {
    [super setFrame:frame];
    
    [self changeImageRadius:frame];
}

/**
 * 更改图片圆边方法
 */
- (void)changeImageRadius:(CGRect)frame {
    CGFloat radius = frame.size.height/2.0;
    self.layer.cornerRadius = radius;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
