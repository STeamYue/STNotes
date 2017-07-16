//
//  STMainTabBarC.m
//  STNotes
//
//  Created by 岳克奎 on 2017/7/14.
//  Copyright © 2017年 ST. All rights reserved.
//

#import "STMainTabBarC.h"

@interface STMainTabBarC () <UITabBarControllerDelegate>

@end

@implementation STMainTabBarC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self show_Subs];
}

- (void)show_Subs{
    
    UINavigationController *plusNavC = [[UINavigationController alloc] initWithRootViewController:[UIViewController new]];
    self.viewControllers = @[[self themeNavC],plusNavC,[self myNavC]];
    UITabBarItem *themItem = [self.tabBar.items objectAtIndex:0];
    [self showTabBarItem:themItem
              itemImgStr:@"select"
        selectItemImgStr:@"un_select"
            itemTitleStr:@"主题"];
    UITabBarItem *plusItem = [self.tabBar.items objectAtIndex:1];
    [self showTabBarItem:plusItem
              itemImgStr:@"select"
        selectItemImgStr:@"un_select"
            itemTitleStr:@"中间"];
    
    
    UITabBarItem *myItem = [self.tabBar.items objectAtIndex:2];
    [self showTabBarItem:myItem
              itemImgStr:@"select"
        selectItemImgStr:@"un_select"
            itemTitleStr:@"我的"];
    UITabBarItem* item = [UITabBarItem appearance];
    [item setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor redColor]} forState:UIControlStateSelected];
    
    self.tabBar.tintColor = [UIColor greenColor];
    self.delegate = self;
}

#pragma mark -  设置UITabBarItem
- (void)showTabBarItem:(UITabBarItem *) tabBarItem
            itemImgStr:(NSString *)itemImgStr
      selectItemImgStr:(NSString *)selectItemImgStr
          itemTitleStr:(NSString *)itemTitleStr
{
    [tabBarItem setImage:[[UIImage imageNamed:itemImgStr] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [tabBarItem setSelectedImage:[[UIImage imageNamed:selectItemImgStr] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [tabBarItem setTitle:itemTitleStr];
    tabBarItem.imageInsets=UIEdgeInsetsMake(2, 2, 2, 2);
    
}
#pragma mark 设置tabBarItem默认图标和选中图标
- (BOOL)tabBarController:(UITabBarController *)tabBarController
shouldSelectViewController:(UIViewController *)viewController{
    //找到选择索引
    NSInteger index = [tabBarController.viewControllers indexOfObject:viewController];
    if(index == 1){
        //弹出  菜单界面
        return NO;//iteam 不响应TabBatC的select事件
    }
    return YES;
}
- (ThemeC *)themeC{
    if(!_themeC)
    {
        ThemeC *themeC = [[ThemeC alloc]init];
        themeC.tabBarC = self;
        _themeC = themeC;
    }
    return _themeC;
}
- (UINavigationController *)themeNavC{
    if (!_themeNavC)
    {
        UINavigationController *themeNavC =  [[UINavigationController alloc] initWithRootViewController:[self themeC]];
        _themeNavC = themeNavC;
    }
    return _themeNavC;
}
- (MyC *)myC{
    if (!_myC)
    {
        MyC *myC =[[MyC alloc]init];
        myC.tabBarC = self;
        _myC = myC;
    }
    return _myC;
}
-(UINavigationController *)myNavC{
    if (!_myNavC)
    {
        UINavigationController *myNavC =  [[UINavigationController alloc] initWithRootViewController:[self myC]];
        _myNavC = myNavC;
    }
    return _myNavC;
}



@end
