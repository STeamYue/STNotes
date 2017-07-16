//
//  BlogView.m
//  STNotes
//
//  Created by 岳克奎 on 2017/7/15.
//  Copyright © 2017年 ST. All rights reserved.
//

#import "BlogView.h"
#import "BlogViewC.h"
#import <Masonry.h>
@implementation BlogView



- (void)layoutSubviews{
    [super layoutSubviews];
    [[self wkWebView] mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self);
    }];
}

- (void)setBlogUrl:(NSURL *)blogUrl{
    _blogUrl = blogUrl;
    //开始加载
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:blogUrl];
    request.timeoutInterval = 15.0f;
    [[self wkWebView] loadRequest:request];
}
@end
