//
//  MyView.m
//  STNotes
//
//  Created by 岳克奎 on 2017/7/14.
//  Copyright © 2017年 ST. All rights reserved.
//

#import "MyView.h"
#import "MyProtocol.h"
#import <Masonry.h>
@implementation MyView
- (WKWebViewConfiguration *)wkConfig {
    if (!_wkConfig) {
        _wkConfig = [[WKWebViewConfiguration alloc] init];
        _wkConfig.allowsInlineMediaPlayback = YES;
        _wkConfig.allowsPictureInPictureMediaPlayback = YES;
    }
    return _wkConfig;
}
- (WKWebView *)wkWebView {
    if (!_wkWebView)
    {
        _wkWebView = [[WKWebView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width,  [UIScreen mainScreen].bounds.size.height)
                                       configuration:[self wkConfig]];
        [self addSubview:_wkWebView];
        [_wkWebView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(self);
        }];
        _wkWebView.navigationDelegate = [self protocol];
        _wkWebView.UIDelegate = [self protocol];
    }
    return _wkWebView;
}
- (MyProtocol *)protocol{
    if (!_protocol)
    {
        MyProtocol *protocol  =[[MyProtocol alloc]init];
        _protocol = protocol;
    }
    return _protocol;
    
}
- (UIProgressView *)progressView{
    if (!_progressView) {
        UIProgressView *progressView = [[UIProgressView alloc]init];
        progressView.backgroundColor = [UIColor blueColor];
        [self addSubview:progressView];
        [progressView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.top.right.equalTo(self);
            make.width.equalTo(@1);
        }];
        _progressView = progressView;
    }
    return _progressView;
}
@end
