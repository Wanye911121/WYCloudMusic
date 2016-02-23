//
//  QCNavigationController.m
//  BER_QC
//
//  Created by liuzhiqiong on 15/10/30.
//  Copyright © 2015年 北京宝润兴业发展科技股份有限公司. All rights reserved.
//

#import "CloudNavigationController.h"

@interface CloudNavigationController ()

@end

@implementation CloudNavigationController

- (void)viewDidLoad {
    
    [super viewDidLoad];
}


+ (void)initialize{
    
    UINavigationBar *Navbar = [UINavigationBar appearanceWhenContainedIn:self, nil];


    Navbar.barTintColor = RGB(223, 27, 30);

    //去掉导航条的半透明
    Navbar.translucent = NO;
    
    //颜色字体设置
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    dict[NSFontAttributeName] = [UIFont fontWithName:@"HelveticaNeue-Light" size:18.0];
    dict[NSForegroundColorAttributeName] = [UIColor whiteColor];
    [Navbar setTitleTextAttributes:dict];
    
    
    //按钮颜色（返回按钮的颜色设置）
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];

}
/**
 *  设置状态栏显示
 *
 *  @return <#return value description#>
 */
-(UIStatusBarStyle)preferredStatusBarStyle{
    
    return UIStatusBarStyleLightContent;
}

-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.viewControllers.count >0) {
        viewController.hidesBottomBarWhenPushed=YES;
        
    }
    [super pushViewController:viewController animated:animated];
}

@end
