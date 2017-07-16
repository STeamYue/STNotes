//
//  STView.h
//  STNotes
//
//  Created by 岳克奎 on 2017/7/14.
//  Copyright © 2017年 ST. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
@interface STView : UIView
@property (nonatomic, strong) UITableView            *tableView;
@property (nonatomic, strong) WKWebViewConfiguration *wkConfig;
@property (nonatomic, strong) WKWebView              *wkWebView;
@property (nonatomic, strong) UIProgressView         *progressView;
@end
