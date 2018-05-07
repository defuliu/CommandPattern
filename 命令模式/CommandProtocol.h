//
//  CommandProtocol.h
//  命令模式
//
//  Created by 刘德福 on 2018/5/7.
//  Copyright © 2018年 ZGW. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CommandProtocol <NSObject>

//具体执行
- (void)execute;

//回退一步
- (void)backExecute;

@end
