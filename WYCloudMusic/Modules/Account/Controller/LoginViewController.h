//
//  LoginViewController.h
//  WYCloudMusic
//
//  Created by ZpyZp on 15/12/30.
//  Copyright © 2015年 zpy. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, loginType) {
    accountLogin,
    partnerLogin
};

@interface LoginViewController : UIViewController
@property (assign,nonatomic) loginType loginType;
@end
