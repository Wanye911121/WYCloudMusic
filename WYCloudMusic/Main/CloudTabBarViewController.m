//
//  CouldTabBarViewController.m
//  FinancialCloud
//
//  Created by ZpyZp on 15/11/12.
//  Copyright © 2015年 zpy. All rights reserved.
//

#import "CloudTabBarViewController.h"

@interface CloudTabBarViewController ()

@end

@implementation CloudTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupItem];
    
    
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(tabBarItemDidNotificate:) name:kTabBarDidChangedNotification object:nil];
    // Do any additional setup after loading the view.
}

-(void)tabBarItemDidNotificate:(NSNotification *)note
{
    self.selectedIndex = 0;
}

-(void)setupItem{
    
    self.tabBar.barTintColor = [UIColor blackColor];
    self.tabBar.alpha = 0.9;
    
    
        UITabBar *tabbar = self.tabBar;
        [tabbar.items enumerateObjectsUsingBlock:^(UITabBarItem * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            switch (idx) {
                case 0:
                    obj.selectedImage = [[UIImage imageNamed:@"cm2_btm_icn_discovery_prs"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
                    break;
                case 1:
    
                    obj.selectedImage = [[UIImage imageNamed:@"cm2_btm_icn_music_prs"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
                    break;
                case 2:
                    obj.selectedImage = [[UIImage imageNamed:@"cm2_btm_icn_friend_prs"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
                    break;
    
                case 3:
                    obj.selectedImage = [[UIImage imageNamed:@"cm2_btm_icn_account_prs"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
                    break;
    
                default:
                    break;
            }
        }];

    
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:RGB(255, 255, 255),NSForegroundColorAttributeName, nil] forState:UIControlStateSelected];
    
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:RGB(167, 167, 167),NSForegroundColorAttributeName, nil] forState:UIControlStateNormal];

}


-(UIStatusBarStyle)preferredStatusBarStyle{
    
    
    return UIStatusBarStyleLightContent;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
