//
//  ThemeProtocol.h
//  STNotes
//
//  Created by 岳克奎 on 2017/7/15.
//  Copyright © 2017年 ST. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface ThemeProtocol : NSObject <UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) NSMutableArray *dsMArray;            //数据源数组
@property (nonatomic, strong) NSMutableArray <NSNumber *>*cellHeights;            //
@end
