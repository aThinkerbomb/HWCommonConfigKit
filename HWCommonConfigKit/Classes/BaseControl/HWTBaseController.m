//
//  HWTBaseController.m
//  HWTeacherConfigKit
//
//  Created by 宇轩 on 2020/8/31.
//  Copyright © 2020 Ric. All rights reserved.
//

#import "HWTBaseController.h"
#import "HWCommonConfigHeader.h"



@interface HWTBaseController ()<WXTViewControllerRouteProtocol>

@property (nonatomic, strong) WXTRouteAddress * routeAddress;
@property (nonatomic, strong) UIView * fakeNavigationBar;
@property (nonatomic, strong) UILabel * fakeTitleLabel;
@property (nonatomic, strong) UIButton * leftBarButton;
@property (nonatomic, strong) UITableView * tableView;


@end

@implementation HWTBaseController

#pragma mark - LifeCycle
- (instancetype)init {
    if (self = [super init]) {
        
    }
    return self;
}

- (void)loadView {
    [super loadView];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self setupNavigationView];
    
    [self setupDefaultView];
    
    [self requestServiceData];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    self.fakeNavigationBar.hidden = self.shouldHideNavigationBar;
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)dealloc {
    NSLog(@"\n%@ 释放了～", self.class);
}

#pragma mark - WXTViewControllerRouteProtocol
- (instancetype)initFromWXTAddress:(WXTRouteAddress *)address {
    if (self = [super init]) {
        self.routeAddress = address;
    }
    return self;
}

#pragma mark - private method

- (void)setupNavigationView {
    [self.view addSubview:self.fakeNavigationBar];
    [self.fakeNavigationBar addSubview:self.leftBarButton];
    [self.fakeNavigationBar addSubview:self.fakeTitleLabel];
    
    
    [self.fakeNavigationBar mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.top.mas_equalTo(0);
        make.height.mas_equalTo(NAVBAR_HEIGHT);
    }];
    
    [self.leftBarButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.top.mas_equalTo(0);
        make.size.mas_equalTo(CGSizeMake(150, NAVBAR_HEIGHT));
    }];
    
    [self.fakeTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(0);
        make.centerY.mas_equalTo(BATTERY_HEIGHT / 2.0f);
    }];
    
    
    if (self.navigationController.viewControllers.count <= 1) {
        self.leftBarButton.hidden = YES;
    }
}

- (void)setupDefaultView {
    
}


- (void)goback {
    if (self.presentingViewController) {
        [self dismissViewControllerAnimated:YES completion:nil];
    } else if (self.navigationController.viewControllers.count > 1) {
        [self.navigationController popViewControllerAnimated:YES];
    }
}


- (BOOL)isEmpty {
    if(_isEmpty)
        return YES;
    
    //有子VC 递归调用
    if(self.childViewControllers) {
        
        for(UIViewController* vc in self.childViewControllers) {
            
            if([vc isKindOfClass:[HWTBaseController class]]) {
                //递归
                if([(HWTBaseController*)vc isEmpty]) {
                    return YES;
                }
            }
        }
    }
    return NO;
}

- (void)requestServiceData {
    
}


#pragma mark - Setter、Getter

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskLandscape;
}

- (BOOL)shouldEnablePopGesture {
    return YES;
}

- (void)setTitle:(NSString *)title {
    [super setTitle:title];
    self.fakeTitleLabel.text = title;
}

- (void)setLeftBarImage:(UIImage *)leftBarImage {
    [self.leftBarButton setImage:leftBarImage forState:UIControlStateNormal];
}

- (void)setLeftBarTitle:(NSString *)leftBarTitle {
    [self.leftBarButton setTitle:leftBarTitle forState:UIControlStateNormal];
}

- (UIView *)fakeNavigationBar {
    if (!_fakeNavigationBar) {
        _fakeNavigationBar = [[UIView alloc] init];
        _fakeNavigationBar.backgroundColor = [UIColor whiteColor];
    }
    return _fakeNavigationBar;
}

- (UILabel *)fakeTitleLabel {
    if (!_fakeTitleLabel) {
        _fakeTitleLabel = [[UILabel alloc] init];
        _fakeTitleLabel.textAlignment = NSTextAlignmentCenter;
        _fakeTitleLabel.font = [UIFont systemFontOfSize:16 weight:UIFontWeightMedium];
        _fakeTitleLabel.textColor = UIColorFromRGB(0x333333);
    }
    return _fakeTitleLabel;
}

- (UIButton *)leftBarButton {
    if (!_leftBarButton) {
        _leftBarButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _leftBarButton.titleLabel.font = [UIFont systemFontOfSize:14.0];
        _leftBarButton.titleLabel.textAlignment = NSTextAlignmentLeft;
        _leftBarButton.titleLabel.textColor = UIColorFromRGB(0x333333);
        _leftBarButton.imageView.contentMode = UIViewContentModeScaleAspectFit;
        [_leftBarButton setImage:[UIImage imageNamed:@"icon_back"] forState:UIControlStateNormal];
        [_leftBarButton addTarget:self action:@selector(goback) forControlEvents:UIControlEventTouchUpInside];
        [_leftBarButton layoutButtonWithEdgeInsetsStyle:ZH_ButtonEdgeInsetsStyleLeft imageTitleSpace:9];
    }
    return _leftBarButton;
}



@end
