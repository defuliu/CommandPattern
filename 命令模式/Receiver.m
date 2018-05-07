//
//  Receiver.m
//  命令模式
//
//  Created by 刘德福 on 2018/5/7.
//  Copyright © 2018年 ZGW. All rights reserved.
//

#import "Receiver.h"

@implementation Receiver

- (void)setReceiverView:(UIView *)receiverView
{
    _receiverView = receiverView;
    UIColor *color = _receiverView.backgroundColor;
    [color getWhite:&_white alpha:&_alpha];
}

- (void)mackDarker:(CGFloat)parameter
{
    _white -= parameter;
    //设置取值范围
    _white = MAX(0, _white);
    
    //设置背景颜色
    _receiverView.backgroundColor = [UIColor colorWithWhite:_white alpha:_alpha];
}

- (void)macLighter:(CGFloat)pamameter
{
    _white += pamameter;
    //设置取值范围
    _white = MIN(1, _white);
    
    //设置背景颜色
    _receiverView.backgroundColor = [UIColor colorWithWhite:_white alpha:_alpha];
}

@end
