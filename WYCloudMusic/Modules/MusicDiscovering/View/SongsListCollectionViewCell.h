//
//  SongsListCollectionViewCell.h
//  WYCloudMusic
//
//  Created by ZpyZp on 16/1/3.
//  Copyright © 2016年 zpy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SongsListCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *songsImageView;
@property (weak, nonatomic) IBOutlet UIButton *listenerCount;
@property (weak, nonatomic) IBOutlet UIButton *author;

@end
