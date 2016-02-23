//
//  NeighborFootView.m
//  WYCloudMusic
//
//  Created by ZpyZp on 15/12/30.
//  Copyright © 2015年 zpy. All rights reserved.
//

#import "NeighborFootView.h"

@implementation NeighborFootView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self setupView];
    }
    return self;
}

- (void)setupView{
    UILabel *textLabel = [UILabel new];
    
    textLabel.text = @"登录后即可查看附近的人";
    textLabel.textAlignment = NSTextAlignmentCenter;
    textLabel.font = [UIFont systemFontOfSize:14];
    [self addSubview:textLabel];
    [textLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.right.equalTo(self);
        make.height.equalTo(@30);
    }];
    LxDBAnyVar(textLabel.frame);
    UIButton *loginBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [loginBtn setTitle:@"立即登录" forState:UIControlStateNormal];
    [loginBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [loginBtn addTarget:self action:@selector(loginBtnDidClick:) forControlEvents:UIControlEventTouchUpInside];
    loginBtn.layer.borderWidth = 1;
    loginBtn.layer.borderColor = [UIColor lightGrayColor].CGColor;
    loginBtn.layer.cornerRadius = 4;
    loginBtn.layer.masksToBounds = YES;
    [self addSubview:loginBtn];
    [loginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).multipliedBy(1).offset(10);
        make.right.equalTo(self).multipliedBy(1).offset(-10);
        make.height.equalTo(@40);
        make.top.equalTo(textLabel.mas_bottom);
    }];
}

- (void)loginBtnDidClick:(UIButton *)btn {
    if ([self.delegate respondsToSelector:@selector(loginBtnDidClick)]) {
        [self.delegate loginBtnDidClick];
    }
}

@end
