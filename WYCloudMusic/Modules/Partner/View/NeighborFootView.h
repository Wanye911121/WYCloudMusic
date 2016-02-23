//
//  NeighborFootView.h
//  WYCloudMusic
//
//  Created by ZpyZp on 15/12/30.
//  Copyright © 2015年 zpy. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol NeighborFootViewDelegate <NSObject>
- (void)loginBtnDidClick;
@end

@interface NeighborFootView : UIView
@property (nonatomic,weak) id<NeighborFootViewDelegate> delegate;
@end
