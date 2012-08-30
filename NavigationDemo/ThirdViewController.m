//
//  ThirdViewController.m
//  NavigationDemo
//
//  Created by TX-LY on 12-8-30.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)gotoForwardView:(id)sender
{
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:1] animated:YES];
//    [self.navigationController setNavigationBarHidden:YES animated:YES];
    
}

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
    //buttonThird
    UIButton *buttonThird = [UIButton buttonWithType:UIButtonTypeCustom];
    [buttonThird setFrame:CGRectMake(0, 0, 320, 480)];
    buttonThird.backgroundColor = [UIColor purpleColor];
    [buttonThird setTitle:@"buttonThird" forState:UIControlStateNormal];
    [buttonThird setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:buttonThird];
    [buttonThird addTarget:self action:@selector(gotoForwardView:) forControlEvents:UIControlEventTouchUpInside];
//    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
