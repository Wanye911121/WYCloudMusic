//
//  TextfieldView.m
//  WYCloudMusic
//
//  Created by ZpyZp on 15/12/31.
//  Copyright © 2015年 zpy. All rights reserved.
//

#import "TextfieldView.h"

#define MarginLeft 50
#define MarginTop 10

@implementation TextfieldView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
        [self configView];
        [self setupChildView];
    }
    return self;
}


- (void)awakeFromNib {
    [self setupChildView];
    [self configView];
}

-(NSString *)placeHolder
{
    if (!_placeHolder) {
        return @"搜索音乐、歌词、电台";
    }
    return _placeHolder;
}

-(void)configView {
    self.userInteractionEnabled = YES;
    self.backgroundColor = [UIColor whiteColor];
    self.layer.cornerRadius = 4;
    self.layer.masksToBounds = YES;
}

-(void)setupChildView {
    UIImageView *searchImageView = [UIImageView new];
    searchImageView.image = [UIImage imageNamed:@"cm2_list_icn_search"];
    [self addSubview:searchImageView];
    [searchImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(MarginLeft);
        make.height.width.equalTo(@12);
        make.top.equalTo(self).offset(MarginTop);
    }];
    
    UITextField *inputField = [UITextField new];
    inputField.placeholder = self.placeHolder;
    inputField.font = [UIFont systemFontOfSize:12];
    [self addSubview:inputField];
    [inputField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(searchImageView.mas_right).offset(5);
        make.right.top.bottom.equalTo(self);
    }];
}

@end
