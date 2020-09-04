//
//  HWBaseNavigationController.m
//  HWTeacherConfigKit
//
//  Created by 宇轩 on 2020/9/1.
//  Copyright © 2020 Ric. All rights reserved.
//

#import "HWBaseNavigationController.h"
#import "HWTBaseController.h"
@interface HWBaseNavigationController () <UINavigationControllerDelegate,UIGestureRecognizerDelegate>

@end

@implementation HWBaseNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationBar.translucent = YES;
    self.navigationBarHidden = YES;
    self.interactivePopGestureRecognizer.delegate = self;
    [self setNeedsStatusBarAppearanceUpdate];
    
    self.delegate = self;
}

#pragma mark - Navigation
- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated{
    if (self.viewControllers.count > 1) {
        self.interactivePopGestureRecognizer.enabled = YES;
    } else {
        self.interactivePopGestureRecognizer.enabled = NO;
    }
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    
    // 这时push进来的控制器，不是根控制器
    if (self.viewControllers.count) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
}

#pragma mark - Appearance
- (UIStatusBarStyle)preferredStatusBarStyle {
    return [self.topViewController preferredStatusBarStyle];
}
- (BOOL)shouldAutorotate {
    return [self.topViewController shouldAutorotate];
}
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return [self.topViewController supportedInterfaceOrientations];
}

#pragma mark - Gesture
- (UIGestureRecognizer *)popGesture {
    return self.interactivePopGestureRecognizer;
}

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
    UIViewController* topVC = [self topViewController];
    if([topVC isKindOfClass:HWTBaseController.class] && self.viewControllers.count > 1){
        return [(HWTBaseController*)topVC shouldEnablePopGesture];
    }else if(self.viewControllers.count > 1){
        return YES;
    }
    return NO;
}



@end
