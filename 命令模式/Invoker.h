//
//  Invoker.h
//  命令模式
//
//  Created by 刘德福 on 2018/5/7.
//  Copyright © 2018年 ZGW. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandProtocol.h"

@interface Invoker : NSObject

+ (instancetype)shareInstance;

- (void)geBack;

- (void)addAndExcute:(id<CommandProtocol>)command;

@end
