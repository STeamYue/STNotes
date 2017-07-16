//
//  STView.m
//  STNotes
//
//  Created by 岳克奎 on 2017/7/14.
//  Copyright © 2017年 ST. All rights reserved.
//

#import "STView.h"
#import <Masonry.h>
@implementation STView

- (UITableView *)tableView{
    if (!_tableView) {
       _tableView = [[UITableView alloc]init];
        [self addSubview:_tableView];
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    }
    return _tableView;
}
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
        _wkWebView = [[WKWebView alloc]initWithFrame:CGRectMake(0, 0,0,0)
                                       configuration:[self wkConfig]];
        [self addSubview:_wkWebView];
    }
    return _wkWebView;
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
