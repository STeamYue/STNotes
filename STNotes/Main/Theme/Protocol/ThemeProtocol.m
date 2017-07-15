//
//  ThemeProtocol.m
//  STNotes
//
//  Created by 岳克奎 on 2017/7/15.
//  Copyright © 2017年 ST. All rights reserved.
//

#import "ThemeProtocol.h"
#import "ThemeFoldingCell.h"
#define kCloseCellHeight    179.f
#define kOpenCellHeight     488.f
#define kRowsCount          10
@implementation ThemeProtocol

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
//    return _dsMArray.count;
    return kRowsCount;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ThemeFoldingCell *cell = [tableView dequeueReusableCellWithIdentifier:[NSString stringWithFormat:@"%@", [ThemeFoldingCell class]] forIndexPath:indexPath];
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [[self cellHeights][indexPath.row] floatValue];
}
- (NSMutableArray *)cellHeights{
    if (!_cellHeights&& _cellHeights.count == 0) {
        _cellHeights = @[].mutableCopy;
        for (int i = 0; i < kRowsCount; i ++) {
            @autoreleasepool {
                [_cellHeights addObject:@(kCloseCellHeight)];
            }
        }
    }
    return _cellHeights;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(ThemeFoldingCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (![cell isKindOfClass:[ThemeFoldingCell class]]) return;
    cell.backgroundColor = [UIColor clearColor];
    CGFloat cellHeight = [self cellHeights][indexPath.row].floatValue;
    if (cellHeight == kCloseCellHeight) {
        [cell selectedAnimationByIsSelected:NO animated:NO completion:nil];
    }else
    {
        [cell selectedAnimationByIsSelected:YES animated:NO completion:nil];
    }
    
  //  [cell setNumber:indexPath.row];
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    ThemeFoldingCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    
    if (![cell isKindOfClass:[ThemeFoldingCell class]]) return;
    
    if (cell.isAnimating) return;
    
    NSTimeInterval duration = 0.f;
    
    CGFloat cellHeight = [self cellHeights][indexPath.row].floatValue;
    
    if (cellHeight == kCloseCellHeight) {
        [self cellHeights][indexPath.row] = @(kOpenCellHeight);
        [cell selectedAnimationByIsSelected:YES animated:YES completion:nil];
        duration = 1.f;
    }else
    {
        [self cellHeights][indexPath.row] = @(kCloseCellHeight);
        [cell selectedAnimationByIsSelected:NO animated:YES completion:nil];
        duration = 1.f;
    }
    
    [UIView animateWithDuration:duration delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        [tableView beginUpdates];
        [tableView endUpdates];
    } completion:nil];
    
}

@end
