//
//  ThemeView.h
//  STNotes
//
//  Created by 岳克奎 on 2017/7/14.
//  Copyright © 2017年 ST. All rights reserved.
//

#import "STView.h"
@class ThemeProtocol;
@class ThemeC;
@interface ThemeView : STView
@property (nonatomic, strong)ThemeProtocol *protocol;
@property (nonatomic, strong)ThemeC        *themeC;
@end
