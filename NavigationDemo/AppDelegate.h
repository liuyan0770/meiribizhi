//
//  AppDelegate.h
//  NavigationDemo
//
//  Created by TX-LY on 12-8-29.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;//声明视图控制器的前向引用

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) ViewController *viewController;//视图控制器
@property (strong, nonatomic) UINavigationController *navController;//导航控制器

@end
