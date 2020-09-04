//
//  HWTBaseController.h
//  HWTeacherConfigKit
//
//  Created by 宇轩 on 2020/8/31.
//  Copyright © 2020 Ric. All rights reserved.
//

#import <UIKit/UIKit.h>
@class WXTRouteAddress;

NS_ASSUME_NONNULL_BEGIN

@interface HWTBaseController : UIViewController

/// 通过 Route 初始化
/// @param address URL
- (instancetype)initFromWXTAddress:(WXTRouteAddress *)address;


/// 设置左侧返回按钮Title
@property (nonatomic, strong) NSString * leftBarTitle;

/// 设置左侧返回按钮图片
@property (nonatomic, strong) UIImage * leftBarImage;

/// 导航栏Bar，可自行设置特殊性
@property (nonatomic, strong, readonly) UIView * fakeNavigationBar;

/// 获取当前Route
@property (nonatomic, strong, readonly) WXTRouteAddress* routeAddress;

/// 是否隐藏导航栏，默认为NO。
@property (nonatomic, assign) BOOL shouldHideNavigationBar;

/// 设置是否启动手势返回，默认YES。
@property (nonatomic, assign) BOOL shouldEnablePopGesture;

/// 是否为空页面 - 如果显示了EmptyView则为空页面（如果子vc为空，该页面也为空）
@property (nonatomic, assign) BOOL isEmpty;

/// 获取数据
- (void)requestServiceData;

/// 返回
- (void)goback;
@end

NS_ASSUME_NONNULL_END
