//
//  STView.m
//  STNotes
//
//  Created by 岳克奎 on 2017/7/14.
//  Copyright © 2017年 ST. All rights reserved.
//

#import "STView.h"

@implementation STView

- (UITableView *)tableView{
    if (!_tableView) {
       _tableView = [[UITableView alloc]init];
        [self addSubview:_tableView];
    }
    return _tableView;
}

@end
