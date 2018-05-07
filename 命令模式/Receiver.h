//
//  Receiver.h
//  命令模式
//
//  Created by 刘德福 on 2018/5/7.
//  Copyright © 2018年 ZGW. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Receiver : NSObject
{
    CGFloat _white;
    CGFloat _alpha;
}

// 接受者view
@property (nonatomic, strong)UIView *receiverView;

//变暗的接口
- (void)mackDarker:(CGFloat)parameter;

//变亮的接口
- (void)macLighter:(CGFloat)pamameter;

@end
