//
//  LoginViewController.m
//  WYCloudMusic
//
//  Created by ZpyZp on 15/12/30.
//  Copyright © 2015年 zpy. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *loginImageView;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self setupNav];
    
    if (self.loginType == partnerLogin) {
        self.titleLabel.text = @"关注喜欢的明星、好友，看Ta们在听什么";
        self.loginImageView.image = [UIImage imageNamed:@"cm2_login_banner_act"];
    }
    // Do any additional setup after loading the view from its nib.
}

- (void)setupNav{
    
    self.title = @"登录";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)phoneLoginEvent:(id)sender {
}
- (IBAction)sinaLoginEvent:(id)sender {
}
- (IBAction)wangyiLoginEvent:(id)sender {
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
