//
//  MyProtocol.m
//  STNotes
//
//  Created by 岳克奎 on 2017/7/14.
//  Copyright © 2017年 ST. All rights reserved.
//

#import "MyProtocol.h"

@interface MyProtocol ()

@end
@implementation MyProtocol

/* ----------------------------- WKWKNavigationDelegate ---------------------------- */
#pragma - 开始加载

/*
 *5.在WKWebViewd的代理中展示进度条，加载完成后隐藏进度条
 */
//开始加载
- (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation {
    
}
//加载完成
- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation {
}
//加载失败
- (void)webView:(WKWebView *)webView didFailProvisionalNavigation:(WKNavigation *)navigation withError:(NSError *)error {
}
//页面跳转
- (void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler {
    //允许页面跳转
    NSLog(@"%@",navigationAction.request.URL);
    decisionHandler(WKNavigationActionPolicyAllow);
}
@end
