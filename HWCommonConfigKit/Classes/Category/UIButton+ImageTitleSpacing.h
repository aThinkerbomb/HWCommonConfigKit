//
//  UIButton+ImageTitleSpacing.h
//  SunLands
//
//  Created by 张宇轩 on 2019/5/22.
//  Copyright © 2019 Yuxuan. All rights reserved.
//



NS_ASSUME_NONNULL_BEGIN

@interface UIButton (ImageTitleSpacing)

typedef NS_ENUM(NSUInteger, ZH_ButtonEdgeInsetsStyle) {
    ZH_ButtonEdgeInsetsStyleTop, // image在上，label在下
    ZH_ButtonEdgeInsetsStyleLeft, // image在左，label在右
    ZH_ButtonEdgeInsetsStyleBottom, // image在下，label在上
    ZH_ButtonEdgeInsetsStyleRight // image在右，label在左
};

/**
 *  设置button的titleLabel和imageView的布局样式，及间距
 *
 *  @param style titleLabel和imageView的布局样式
 *  @param space titleLabel和imageView的间距
 */
- (void)layoutButtonWithEdgeInsetsStyle:(ZH_ButtonEdgeInsetsStyle)style
                        imageTitleSpace:(CGFloat)space;

- (void)layoutButtonWithEdgeInsetsStyle:(ZH_ButtonEdgeInsetsStyle)style;


@end

NS_ASSUME_NONNULL_END
