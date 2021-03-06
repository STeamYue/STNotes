//
//  ThemeFoldingCell.m
//  STNotes
//
//  Created by 岳克奎 on 2017/7/15.
//  Copyright © 2017年 ST. All rights reserved.
//

#import "ThemeFoldingCell.h"
@implementation ThemeFoldingCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (NSTimeInterval)animationDurationWithItemIndex:(NSInteger)itemIndex animationType:(AnimationType)type
{
    NSArray<NSNumber *> *array = @[@(0.5f),@(.25f),@(.25f)];
    return array[itemIndex].doubleValue;
}
- (void)setThemeFoldingCellDelegate:(id<ThemeFoldingCellDelegate>)themeFoldingCellDelegate{
    _themeFoldingCellDelegate = themeFoldingCellDelegate;
}
- (IBAction)show_themeDetailBtnClick:(UIButton *)sender {
    if (_themeFoldingCellDelegate && [_themeFoldingCellDelegate respondsToSelector:@selector(show_ThemeFoldingCell:opneBlogBtn:)]) {
        [_themeFoldingCellDelegate show_ThemeFoldingCell:self
                                             opneBlogBtn:sender];
    }
}
@end
