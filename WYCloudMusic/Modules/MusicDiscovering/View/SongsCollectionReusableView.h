//
//  SongsCollectionReusableView.h
//  WYCloudMusic
//
//  Created by ZpyZp on 16/1/3.
//  Copyright © 2016年 zpy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SongsCollectionReusableView : UICollectionReusableView
@property (weak, nonatomic) IBOutlet UILabel *songsType;
@property (weak, nonatomic) IBOutlet UIImageView *songsImageView;
@property (weak, nonatomic) IBOutlet UILabel *songsTypeLabel;

@end
