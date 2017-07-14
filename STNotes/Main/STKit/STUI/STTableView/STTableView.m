//
//  STTableView.m
//  STNotes
//
//  Created by 岳克奎 on 2017/7/14.
//  Copyright © 2017年 ST. All rights reserved.
//

#import "STTableView.h"

@implementation STTableView

-(UITableView *)tableView{
    if (!_tableView) {
        UITableView *tableView = [[UITableView alloc]init];
        [self addSubview:tableView];
        _tableView = tableView;
    }
    return _tableView;
}

@end
