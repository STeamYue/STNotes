//
//  ThemeFoldingCell.h
//  STNotes
//
//  Created by 岳克奎 on 2017/7/15.
//  Copyright © 2017年 ST. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CCFoldCell.h"
@class ThemeFoldingCell;
@protocol ThemeFoldingCellDelegate <NSObject>

@optional
- (void)show_ThemeFoldingCell:(ThemeFoldingCell *)themeFoldingCell;
- (void)show_ThemeFoldingCell:(ThemeFoldingCell *)themeFoldingCell opneBlogBtn:(UIButton *)opneBlogBtn;
@end
@interface ThemeFoldingCell : CCFoldCell
@property (nonatomic,weak) id<ThemeFoldingCellDelegate> themeFoldingCellDelegate;
@property (nonatomic,strong) NSIndexPath *indexPath;
@end
