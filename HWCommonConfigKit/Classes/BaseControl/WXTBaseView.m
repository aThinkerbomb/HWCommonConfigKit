//
//  WXTBaseView.m
//  WXTeacherBoard
//
//  Created by kewen on 2020/3/3.
//  Copyright © 2020 100tal. All rights reserved.
//

#import "WXTBaseView.h"

@implementation WXTBaseView

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self addSubViews];
        [self addSubViewsConstraints];
    }
    return self;
}

- (void)addSubViews
{
//    NSAssert(NO, @"Subclass must override this method.");
}

- (void)addSubViewsConstraints
{
//    NSAssert(NO, @"Subclass must override this method.");
}
//DEF_EVENT_DISPACTER
@end
