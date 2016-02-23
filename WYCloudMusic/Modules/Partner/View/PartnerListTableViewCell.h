//
//  PartnerListTableViewCell.h
//  WYCloudMusic
//
//  Created by ZpyZp on 15/12/30.
//  Copyright © 2015年 zpy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PartnerListTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *headImageView;
@property (weak, nonatomic) IBOutlet UILabel *userNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *typeLabel;
@property (weak, nonatomic) IBOutlet UIButton *followBtn;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UIImageView *vipImageView;
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;
@property (weak, nonatomic) IBOutlet UIView *bottomView;
@property (weak, nonatomic) IBOutlet UIButton *raiseBtn;
@property (weak, nonatomic) IBOutlet UIButton *assessBtn;
@property (weak, nonatomic) IBOutlet UIButton *shareBtn;

@end
