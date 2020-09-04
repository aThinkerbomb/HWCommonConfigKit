//
//  UIButton+Extension.m
//  HWTeacherConfigKit
//
//  Created by 宇轩 on 2020/9/01.
//  Copyright © 2020 Ric. All rights reserved.
//

#import "UIButton+Extension.h"

@implementation UIButton (Extension)
- (void)title:(NSString *)title titleColor:(UIColor *)titleColor imageName:(NSString *)imageName titleFont:(UIFont *)font backgroundColor:(UIColor *)backgroundColor{
    if(backgroundColor){
        self.backgroundColor = backgroundColor;
    }
    if(title){
        [self setTitle:title forState:UIControlStateNormal];
    }
    if(titleColor){
        [self setTitleColor:titleColor forState:UIControlStateNormal];
    }
    if(imageName){
        UIImage *image = [UIImage imageNamed:imageName];
        [self setImage:image forState:UIControlStateNormal];
    }
    if(font){
        self.titleLabel.font = font;
    }

}
- (void)title:(NSString *)title imageName:(NSString *)imageName titleFont:(UIFont *)font{
    [self title:title titleColor:nil imageName:imageName titleFont:font backgroundColor:nil];
}
- (void)title:(NSString *)title titleColor:(UIColor *)titleColor titleFont:(UIFont *)font{
    [self title:title titleColor:titleColor imageName:nil titleFont:font backgroundColor:nil];
}

- (void)title:(NSString *)title {
    [self title:title titleFont:nil];
}

- (void)title:(NSString *)title titleFont:(UIFont *)font{
    [self title:title imageName:nil titleFont:font];
}
- (void)title:(NSString *)title titleColor:(UIColor *)titleColor backgroundColor:(UIColor *)backgroundColor{
    [self title:title titleColor:titleColor imageName:nil titleFont:nil backgroundColor:backgroundColor];
}
- (void)title:(NSString *)title titleColor:(UIColor *)titleColor
    imageName:(NSString *)imageName titleFont:(UIFont *)font{
    [self title:title titleColor:titleColor imageName:imageName titleFont:font backgroundColor:nil];
}
- (void)title:(NSString *)title titleColor:(UIColor *)titleColor titleFont:(UIFont *)font backgroundColor:(UIColor *)backgroundColor{
    [self title:title titleColor:titleColor imageName:nil titleFont:font backgroundColor:backgroundColor];
}


@end
