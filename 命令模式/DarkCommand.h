//
//  DarkCommand.h
//  命令模式
//
//  Created by 刘德福 on 2018/5/7.
//  Copyright © 2018年 ZGW. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Receiver.h"
#import "CommandProtocol.h"

@interface DarkCommand : NSObject  <CommandProtocol>

- (instancetype)initWithDark:(Receiver *)receiver parameter:(CGFloat)parameter;

@end
