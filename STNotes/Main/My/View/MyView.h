//
//  MyView.h
//  STNotes
//
//  Created by 岳克奎 on 2017/7/14.
//  Copyright © 2017年 ST. All rights reserved.
//

#import "STView.h"
#import <WebKit/WebKit.h>
@class MyProtocol;
@interface MyView : STView
@property (nonatomic, strong) WKWebViewConfiguration *wkConfig;
@property (nonatomic, strong) WKWebView              *wkWebView;
@property (nonatomic, strong) MyProtocol             *protocol;
@property (nonatomic, strong) UIProgressView         *progressView;
@end
