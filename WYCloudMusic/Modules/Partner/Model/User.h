//
//  User.h
//  WYCloudMusic
//
//  Created by ZpyZp on 15/12/30.
//  Copyright © 2015年 zpy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject
@property (nonatomic,copy) NSString *userId;
@property (nonatomic,copy) NSString *nickname;
@property (nonatomic,copy) NSString *avatarUrl;
@property (nonatomic,copy) NSString *vipType;
@property (nonatomic,copy) NSString *backgroundUrl;
@property (nonatomic,copy) NSString *followed;
@end
