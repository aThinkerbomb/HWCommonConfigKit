//
//  WXTBaseView.h
//  WXTeacherBoard
//
//  Created by kewen on 2020/3/3.
//  Copyright © 2020 100tal. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN


@interface WXTBaseView : UIView //<WXTCommonEventDelegate>
- (instancetype)initWithFrame:(CGRect)frame;
//AS_EVENT_DISPACTER
- (void)addSubViews;
- (void)addSubViewsConstraints;

@end

NS_ASSUME_NONNULL_END
