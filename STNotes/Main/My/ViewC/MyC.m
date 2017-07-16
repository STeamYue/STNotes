//
//  MyC.m
//  STNotes
//
//  Created by 岳克奎 on 2017/7/14.
//  Copyright © 2017年 ST. All rights reserved.
//

#import "MyC.h"
#import <Masonry.h>
@interface MyC ()

@end

@implementation MyC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self show_subViews];
}

- (void)show_subViews{
    self.title = @"博客";
    //KVO
//    [[[self myView] wkWebView] addObserver:self
//                                forKeyPath:@"estimatedProgress"
//                                   options:NSKeyValueObservingOptionNew
                                 //  context:nil];
    //开始加载
    NSString *urlString = @"https://steamyue.github.io/";
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:urlString]];
    request.timeoutInterval = 15.0f;
    [[[self myView] wkWebView] loadRequest:request];
}

- (MyView *)myView{
    if (!_myView) {
       _myView= [[MyView alloc]init];
        [self.view addSubview:_myView];
        _myView.backgroundColor = [UIColor whiteColor];
        [_myView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(self.view);
        }];
    }
    return _myView;
}
/*
 *6.在dealloc中取消监听
 */

//- (void)dealloc {
//    if (self.myView.wkWebView) {
//        [self.myView.wkWebView removeObserver:self
//                                   forKeyPath:@"estimatedProgress"];
//    }
//}


@end
