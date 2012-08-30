//
//  SecondViewController.h
//  NavigationDemo
//
//  Created by TX-LY on 12-8-29.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RootViewController;

@interface SecondViewController : UIViewController
{
    UIView *imageView;//用来显示图片
    UIScrollView *scrollView;
    UIButton *buttonSecond;
    RootViewController *rootViewController;
}

@property (strong, nonatomic) UIView *imageView;
@property (strong, nonatomic) UIButton *buttonSecond;
@property (strong, nonatomic) UIScrollView *scrollView;
@property (strong, nonatomic) RootViewController *rootViewController;

@end
