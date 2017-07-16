//
//  ThemeModel.h
//  STNotes
//
//  Created by 岳克奎 on 2017/7/15.
//  Copyright © 2017年 ST. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ThemeModel : NSObject
@property (nonatomic, strong) NSString       *themeTitle;       //主题标题方向     ReactNative
@property (nonatomic, strong) NSString       *headerImgUrl;     //个人人头像
@property (nonatomic, strong) NSMutableArray *markMArray;        //个人标签
@property (nonatomic, strong) NSString       *nameStr;          //姓名
@property (nonatomic, strong) NSString       *signatureContent; //签名内容
@property (nonatomic, strong) NSMutableArray *blogMArray;       //最低3个博客样例 名称
@property (nonatomic, strong) NSString       *blogMianUrlStr;   //博客地址
@end
