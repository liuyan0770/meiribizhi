//
//  SecondViewController.m
//  NavigationDemo
//
//  Created by TX-LY on 12-8-29.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "SecondViewController.h"
#import "RootViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

@synthesize imageView;
@synthesize buttonSecond;
@synthesize scrollView;
@synthesize rootViewController;

//点击按钮切换到ThirdViewController
- (void)gotoImageView:(id)sender
{
    [self.view addSubview:self.imageView];
    [self.navigationController setNavigationBarHidden:YES];
}
//返回上一级视图
- (void)backToForwardView:(id)sender
{
    [imageView removeFromSuperview];
    [self.navigationController setNavigationBarHidden:NO];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (void)change
{
    UIImage *imageOfButtonSecond = [UIImage imageNamed:@"buttonRoot_1.png"];
    [buttonSecond setBackgroundImage:imageOfButtonSecond forState:UIControlStateNormal];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    //创建一个视图类对象并设置它的大小
    scrollView = [[UIScrollView alloc] init];
    scrollView.frame = CGRectMake(70, 0, 320, 410);
    scrollView.backgroundColor = [UIColor underPageBackgroundColor];
    //把这个视图加到view中去，显示出来
    [self.view addSubview:scrollView];    
    //实现滑动
    [scrollView setContentSize:CGSizeMake(320, 420)];
    //buttonSecond
    buttonSecond = [UIButton buttonWithType:UIButtonTypeCustom];
    [buttonSecond setFrame:CGRectMake(0, 10, 240, 360)];
    buttonSecond.backgroundColor = [UIColor greenColor];
    [buttonSecond setTitle:@"buttonSecond" forState:UIControlStateNormal];
    [buttonSecond setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [buttonSecond addTarget:self action:@selector(gotoImageView:) forControlEvents:UIControlEventTouchUpInside];
    
    
    NSLog(@"----%d",rootViewController.buttonRoot_1.tag);
    if (rootViewController.buttonRoot_1.tag == 11)
    {
        UIImage *imageOfButtonSecond = [UIImage imageNamed:@"buttonRoot_1.png"];
        [buttonSecond setBackgroundImage:imageOfButtonSecond forState:UIControlStateNormal];
    }
    
    [scrollView addSubview:buttonSecond];
    

    //创建一个UIView用来显示图片
    imageView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
    imageView.backgroundColor = [UIColor orangeColor];
    //buttonImage
    UIButton *buttonImage = [UIButton buttonWithType:UIButtonTypeCustom];
    [buttonImage setFrame:CGRectMake(0, 0, 320, 480)];
    buttonImage.backgroundColor = [UIColor purpleColor];
    [imageView addSubview:buttonImage];
    [buttonImage addTarget:self action:@selector(backToForwardView:) forControlEvents:UIControlEventTouchUpInside];
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
