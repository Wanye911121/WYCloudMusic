//
//  ConfigMacro.h
//  WYCloudMusic
//
//  Created by ZpyZp on 15/12/30.
//  Copyright © 2015年 zpy. All rights reserved.
//

#ifndef ConfigMacro_h
#define ConfigMacro_h

//---------------------------系统-------------------------

//App版本Version
#define VERSION [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]
//App构建版本号
#define BUILD_VERSION [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"]

#define BUILD_COUNT [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleGetInfoString"]

#define APPNAME [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleDisplayName"]

#define ChANNELID [[[NSBundle mainBundle] infoDictionary] objectForKey:@"ChannelID"]

//获取当前语言
#define CurrentLanguage ([[NSLocale preferredLanguages] objectAtIndex:0])

//判断是否 Retina屏、设备是否%fhone 5、是否是iPad
#define isRetina ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) : NO)
#define iPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)
#define isPad (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)



//获取系统版本
#define IOS_VERSION [[[UIDevice currentDevice] systemVersion] floatValue]
#define CurrentSystemVersion [[UIDevice currentDevice] systemVersion]



//是否SDK版本大于8
#define IS_IOS_8 ([[[UIDevice currentDevice] systemVersion] floatValue]>=8.0)?YES:NO

//是否SDK版本大于7
#define IS_IOS_7 ([[[UIDevice currentDevice] systemVersion] floatValue]>=7.0)?YES:NO

//是否SDK版本大于6
#define IS_IOS_6 ([[[UIDevice currentDevice] systemVersion] floatValue]>=6.0)?YES:NO

//状态栏，导航栏，工具栏高度
#define StateBarHeight ((IS_IOS_7)?20:0)
#define NavBarHeight ((IS_IOS_7)?64:44)
#define TabbarHeight ((IS_IOS_7)?46:46)

//获取屏幕 宽度、高度
#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)

// 获取RGB颜色
#define RGBA(r,g,b,a) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]
#define RGB(r,g,b) RGBA(r,g,b,1.0f)

#endif /* ConfigMacro_h */
