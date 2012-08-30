//
//  RootViewController.h
//  NavigationDemo
//
//  Created by TX-LY on 12-8-29.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SecondViewController;//SecondViewController的前向引用

@interface RootViewController : UIViewController
{
    SecondViewController *secondViewController;
    UIButton *buttonRoot_1;
}

@property (strong, nonatomic) SecondViewController *secondViewController;
@property (strong, nonatomic) UIButton *buttonRoot_1;

@end
