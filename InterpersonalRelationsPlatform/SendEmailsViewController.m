//
//  SendEmailsViewController.m
//  HowlBlogger
//
//  Created by Ibokan on 14-10-18.
//  Copyright (c) 2014年 Ibokan. All rights reserved.
//

#import "SendEmailsViewController.h"

@interface SendEmailsViewController ()

@end

@implementation SendEmailsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(IBAction)close:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}
-(IBAction)send:(id)sender
{
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
