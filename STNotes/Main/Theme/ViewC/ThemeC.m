//
//  ThemeC.m
//  STNotes
//
//  Created by 岳克奎 on 2017/7/14.
//  Copyright © 2017年 ST. All rights reserved.
//

#import "ThemeC.h"
#import <Masonry.h>
@interface ThemeC ()

@end

@implementation ThemeC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self show_subViews];
}

- (void)show_subViews{
    self.title = @"主题";
    [[self themeView] mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
}

- (ThemeView *)themeView{
    if (!_themeView) {
        ThemeView *themeView = [[ThemeView alloc]init];
        themeView.backgroundColor = [UIColor redColor];
        [self.view addSubview:themeView];
        _themeView = themeView;
    }
    return _themeView;
}
@end
