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

- (void)layoutSubviews{
    [super layoutSubviews];
    //设置代理回调
    [[self wkWebView] mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self);
    }];
    self.wkWebView.navigationDelegate = [self protocol];
    self.wkWebView.UIDelegate = self.protocol;
}
- (MyProtocol *)protocol{
    if (!_protocol)
    {
        MyProtocol *protocol  =[[MyProtocol alloc]init];
        _protocol = protocol;
    }
    return _protocol;
    
}
@end
