//
//  NeighborListTableViewCell.h
//  WYCloudMusic
//
//  Created by ZpyZp on 15/12/30.
//  Copyright © 2015年 zpy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NeighborListTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *neighborImageView;
@property (weak, nonatomic) IBOutlet UILabel *neighborNameLabel;
@property (weak, nonatomic) IBOutlet UIButton *locationBtn;
@property (weak, nonatomic) IBOutlet UILabel *recentListenLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;

@end
