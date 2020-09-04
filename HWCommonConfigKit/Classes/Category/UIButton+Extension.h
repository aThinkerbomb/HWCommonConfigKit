//
//  UIButton+Extension.h
//  HWTeacherConfigKit
//
//  Created by 宇轩 on 2020/9/01.
//  Copyright © 2020 Ric. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Extension)

- (void)title:(NSString *)title titleColor:(UIColor *)titleColor imageName:(NSString *)imageName titleFont:(UIFont *)font backgroundColor:(UIColor *)backgroundColor;
- (void)title:(NSString *)title imageName:(NSString *)imageName titleFont:(UIFont *)font;

- (void)title:(NSString *)title;
- (void)title:(NSString *)title titleFont:(UIFont *)font;
- (void)title:(NSString *)title titleColor:(UIColor *)titleColor titleFont:(UIFont *)font;
- (void)title:(NSString *)title titleColor:(UIColor *)titleColor backgroundColor:(UIColor *)backgroundColor;
- (void)title:(NSString *)title titleColor:(UIColor *)titleColor
    imageName:(NSString *)imageName titleFont:(UIFont *)font;

- (void)title:(NSString *)title titleColor:(UIColor *)titleColor titleFont:(UIFont *)font backgroundColor:(UIColor *)backgroundColor;
@end
