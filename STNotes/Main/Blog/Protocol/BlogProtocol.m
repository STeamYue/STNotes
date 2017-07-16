//
//  BlogProtocol.m
//  STNotes
//
//  Created by 岳克奎 on 2017/7/15.
//  Copyright © 2017年 ST. All rights reserved.
//

#import "BlogProtocol.h"
#import "MBManager.h"
@implementation BlogProtocol
/* ----------------------------- WKWKNavigationDelegate ---------------------------- */
#pragma - 开始加载

/*
 *5.在WKWebViewd的代理中展示进度条，加载完成后隐藏进度条
 */
//开始加载
- (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation {
    [MBManager showLoading];
}
//加载完成
- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation {
    [MBManager hideAlert];
}
//加载失败
- (void)webView:(WKWebView *)webView didFailProvisionalNavigation:(WKNavigation *)navigation withError:(NSError *)error {
    [MBManager hideAlert];
}
//页面跳转
- (void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler {
    [MBManager hideAlert];
    //允许页面跳转
    NSLog(@"%@",navigationAction.request.URL);
    decisionHandler(WKNavigationActionPolicyAllow);
}
@end
