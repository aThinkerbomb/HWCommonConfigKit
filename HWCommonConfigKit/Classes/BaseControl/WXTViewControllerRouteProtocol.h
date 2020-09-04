//
//  WXTViewControllerRoute.h
//  WXTeacherBoard
//
//  Created by Ferris on 2020/3/6.
//  Copyright © 2020 100tal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WXTRouteAddress.h"

#define kWXTRoute_LoginPageURL @"wxt://page/login" //登录页面
#define kWXTRoute_TechBoardPageURL @"wxt://page/teachBoard" //上课直播间
#define kWXTRoute_ClassListPageURL @"wxt://page/classList" //场次列表
#define kWXTRoute_MeTabURL @"wxt://page/meTab" //我的tab
#define kWXTRoute_MainTabPageURL @"wxt://page/home" //首页tabbarController
#define kWXTRoute_FinishLiveURL @"wxt://page/finishLive" //结束直播Controller
#define kWXTRoute_DebugEngine @"wxt://page/debugEngine" //测试环境
#define kWXTRoute_CanvasDev @"wxt://page/canvasDev" //测试环境
#define kWXTRoute_Entrance @"wxt://page/entrance" //入口
NS_ASSUME_NONNULL_BEGIN

typedef enum : NSUInteger {
    WXTViewControllerTransitionStylePresent,
    WXTViewControllerTransitionStylePush,
    WXTViewControllerTransitionStyleRootView //导航控制器的底层
} WXTViewControllerTransitionStyle;

@protocol WXTViewControllerRouteProtocol <NSObject>

- (instancetype)initFromWXTAddress:(WXTRouteAddress*)address;

@optional
//默认是push
- (WXTViewControllerTransitionStyle)preferredTransitionStyleForUrlAddress:(WXTRouteAddress*)address;
//自己处理跳转
- (void)routerHandleTranstionBySelfWithRootNavigationController:(UINavigationController*)navi;
@end

NS_ASSUME_NONNULL_END
