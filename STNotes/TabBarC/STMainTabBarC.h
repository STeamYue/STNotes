//
//  STMainTabBarC.h
//  STNotes
//
//  Created by 岳克奎 on 2017/7/14.
//  Copyright © 2017年 ST. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ThemeC.h"
#import "MyC.h"
@interface STMainTabBarC : UITabBarController
@property (nonatomic, strong) ThemeC                 *themeC;
@property (nonatomic, strong) UINavigationController *themeNavC;
@property (nonatomic, strong) MyC                    *myC;
@property (nonatomic, strong) UINavigationController *myNavC;
@end
