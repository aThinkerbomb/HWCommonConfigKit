//
//  WXTBaseTableViewCell.m
//  
//
//  Created by ferrisxie on 2018/9/5.
//  Copyright © 2018年 localOrganization. All rights reserved.
//

#import "WXTBaseTableViewCell.h"

@implementation WXTBaseTableViewCell

+ (WXTBaseTableViewCell *)cellWithStyle:(UITableViewCellStyle)style
                              tableView:(UITableView *)tableView
{
    return nil;
}

+(NSString *)reuseIdentify
{
    return NSStringFromClass(self);
}
-(void)setUpWithModel:(id)model
{
    NSAssert(NO, @"Subclass must override this method.");
}
-(instancetype)initWithFrame:(CGRect)frame
{
    if(self = [super initWithFrame:frame])
    {
    }
    return self;
}
-(void)setHighlighted:(BOOL)highlighted{
    [super setHighlighted:highlighted];
    self.alpha = highlighted ? 0.5 : 1;
}
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated{
    [super setHighlighted:highlighted animated:animated];
    self.alpha = highlighted ? 0.5 : 1;
}
//DEF_EVENT_DISPACTER
@end
