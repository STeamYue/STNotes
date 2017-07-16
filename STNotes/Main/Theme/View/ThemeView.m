//
//  ThemeView.m
//  STNotes
//
//  Created by 岳克奎 on 2017/7/14.
//  Copyright © 2017年 ST. All rights reserved.
//

#import "ThemeView.h"
#import <Masonry.h>
#import "ThemeProtocol.h"
#import "ThemeFoldingCell.h"
@implementation ThemeView

- (void)layoutSubviews{
    [super layoutSubviews];
    [self protocol].dsMArray = @[@"1",@"2",@"3"].mutableCopy;
    [[self tableView] mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self);
    }];
    self.tableView.backgroundColor = [UIColor groupTableViewBackgroundColor];
    [self.tableView registerNib:[UINib nibWithNibName:[NSString stringWithFormat:@"%@", ([ThemeFoldingCell class])] bundle:nil] forCellReuseIdentifier:NSStringFromClass([ThemeFoldingCell class])];
    self.tableView.delegate = self.protocol;
    self.tableView.dataSource = self.protocol;
}
- (ThemeProtocol *)protocol{
    if (!_protocol) {
        _protocol = [[ThemeProtocol alloc]init];
        _protocol.themeView = self;
    }
    return _protocol;
}
@end
