//
//  BlogView.h
//  STNotes
//
//  Created by 岳克奎 on 2017/7/15.
//  Copyright © 2017年 ST. All rights reserved.
//

#import "STView.h"
@class BlogViewC;
@class BlogProtocol;
@interface BlogView : STView
@property (nonatomic, strong) BlogViewC    *blogViewC;
@property (nonatomic, strong) NSURL        *blogUrl;
@property (nonatomic, strong) BlogProtocol *protocol;
@end
