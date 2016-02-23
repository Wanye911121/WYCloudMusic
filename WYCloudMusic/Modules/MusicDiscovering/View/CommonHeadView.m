//
//  CommonHeadView.m
//  WYCloudMusic
//
//  Created by ZpyZp on 16/1/4.
//  Copyright © 2016年 zpy. All rights reserved.
//

#import "CommonHeadView.h"

@interface CommonHeadView()
{
    NSString *_title;
}
@end

@implementation CommonHeadView

- (instancetype)initWithFrame:(CGRect)frame title:(NSString *)title
{
    self = [super initWithFrame:frame];
    if (self) {
        _title = title;
        [self setupView];
    }
    return self;
}

-(void)setupView {
    UILabel *lineLabel = [UILabel new];
    lineLabel.backgroundColor = RGB(240, 59, 52);
    [self addSubview:lineLabel];
    [lineLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(10);
        make.centerY.equalTo(self);
        make.height.equalTo(@20);
        make.width.equalTo(@3);
    }];
    
    UILabel *textLabel = [UILabel new];
    textLabel.text = _title;
    textLabel.font = [UIFont systemFontOfSize:16];
    [self addSubview:textLabel];
    [textLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(lineLabel.mas_right).offset(10);
        make.centerY.equalTo(self);
        make.right.equalTo(self).offset(-10);
        make.height.equalTo(@20);
    }];
}

@end
