//
//  BlogViewC.m
//  STNotes
//
//  Created by 岳克奎 on 2017/7/15.
//  Copyright © 2017年 ST. All rights reserved.
//

#import "BlogViewC.h"
#import "BlogView.h"
#import <Masonry.h>
@interface BlogViewC ()

@end

@implementation BlogViewC
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   [self show_subViews];
}

- (void)show_subViews{
    self.title = @"博客";
    [self blogView];
}
#pragma  - blogView
- (BlogView *)blogView{
    if (!_blogView) {
        BlogView *blogView = [[BlogView alloc]init];
        blogView.backgroundColor = [UIColor whiteColor];
        [self.view addSubview:blogView];
        [blogView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(self.view);
        }];
        blogView.blogViewC = self;
        _blogView = blogView;
    }
    return _blogView;}
@end
