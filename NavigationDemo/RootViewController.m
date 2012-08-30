//
//  RootViewController.m
//  NavigationDemo
//
//  Created by TX-LY on 12-8-29.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "RootViewController.h"
#import "SecondViewController.h"// 

@interface RootViewController ()

@end

@implementation RootViewController

@synthesize secondViewController;
@synthesize buttonRoot_1;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

//点击按钮切换到SecondViewController
- (void)gotoSecondView:(id)sender
{
    NSLog(@"goto");
    buttonRoot_1.tag = 11;
    SecondViewController *secondView = [[SecondViewController alloc] init];//实例化SecondViewController
    
    NSLog(@"%d",buttonRoot_1.tag);
    [self.navigationController pushViewController:secondView animated:YES];//将secondView压入栈中
    secondView.title = @"Second View";//设置secondView的标题
    //给buttonSecond添加背景图片
    UIImage *imageOfButtonSecond = [UIImage imageNamed:@"buttonRoot_1.png"];
    [self.secondViewController.buttonSecond setBackgroundImage:imageOfButtonSecond forState:UIControlStateNormal];
    
    NSLog(@"%d",buttonRoot_1.tag);

}
- (void)gotoSencondViewAgain:(id)sender
{
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //创建一个滚动视图scrollRootView_1
    UIScrollView *scrollRootView_1 = [[UIScrollView alloc] init];
    scrollRootView_1.frame = CGRectMake(0, 0, 320, 410);
    scrollRootView_1.backgroundColor = [UIColor blueColor];
    //把这个视图加到view中去，显示出来
    [self.view addSubview:scrollRootView_1];    
    //实现滑动
    [scrollRootView_1 setContentSize:CGSizeMake(320, 420)];
    //buttonRoot_1
    buttonRoot_1 = [UIButton buttonWithType:UIButtonTypeCustom];
    [buttonRoot_1 setFrame:CGRectMake(70, 20, 130, 170)];
    buttonRoot_1.backgroundColor = [UIColor yellowColor];
    [buttonRoot_1 setTitle:@"buttonRoot_1" forState:UIControlStateNormal];
    [buttonRoot_1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    UIImage *imageOfButtonRoot_1 = [UIImage imageNamed:@"buttonRoot_1.png"];
    [buttonRoot_1 setBackgroundImage:imageOfButtonRoot_1 forState:UIControlStateNormal];
    [scrollRootView_1 addSubview:buttonRoot_1];
    [buttonRoot_1 addTarget:self action:@selector(gotoSecondView:) forControlEvents:UIControlEventTouchUpInside];
    [buttonRoot_1 addTarget:self action:@selector(gotoSencondViewAgain:) forControlEvents:UIControlEventTouchUpInside];
    //创建滚动视图scrollRootView_2
    UIScrollView *scrollRootView_2 = [[UIScrollView alloc] init];
    scrollRootView_2.frame = CGRectMake(0, 210, 320, 130);
    scrollRootView_2.backgroundColor = [UIColor orangeColor];
    [scrollRootView_2 setContentSize:CGSizeMake(480, 0)];
    [scrollRootView_1 addSubview:scrollRootView_2];
    //buttonRoot_2,3,4...
    UIButton *buttonRoot_2 = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *buttonRoot_3 = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *buttonRoot_4 = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *buttonRoot_5 = [UIButton buttonWithType:UIButtonTypeCustom];


    [buttonRoot_2 setFrame:CGRectMake(70, 0, 80, 130)];
    [buttonRoot_3 setFrame:CGRectMake(155, 0, 80, 130)];
    [buttonRoot_4 setFrame:CGRectMake(240, 0, 80, 130)];
    [buttonRoot_5 setFrame:CGRectMake(325, 0, 80, 130)];
    
    buttonRoot_2.backgroundColor = [UIColor grayColor];
    buttonRoot_3.backgroundColor = [UIColor greenColor];
    buttonRoot_4.backgroundColor = [UIColor redColor];
    buttonRoot_5.backgroundColor = [UIColor underPageBackgroundColor];
    
    [buttonRoot_2 setTitle:@"buttonRoot_2" forState:UIControlStateNormal];
    [buttonRoot_3 setTitle:@"buttonRoot_3" forState:UIControlStateNormal];
    [buttonRoot_4 setTitle:@"buttonRoot_4" forState:UIControlStateNormal];
    [buttonRoot_5 setTitle:@"buttonRoot_5" forState:UIControlStateNormal];
    
    [buttonRoot_2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [buttonRoot_3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [buttonRoot_4 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [buttonRoot_5 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    [scrollRootView_2 addSubview:buttonRoot_2];
    [scrollRootView_2 addSubview:buttonRoot_3];
    [scrollRootView_2 addSubview:buttonRoot_4];
    [scrollRootView_2 addSubview:buttonRoot_5];
    
    [buttonRoot_2 addTarget:self action:@selector(gotoSecondView:) forControlEvents:UIControlEventTouchUpInside];
    [buttonRoot_3 addTarget:self action:@selector(gotoSecondView:) forControlEvents:UIControlEventTouchUpInside];
    [buttonRoot_4 addTarget:self action:@selector(gotoSecondView:) forControlEvents:UIControlEventTouchUpInside];
    [buttonRoot_5 addTarget:self action:@selector(gotoSecondView:) forControlEvents:UIControlEventTouchUpInside];

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
