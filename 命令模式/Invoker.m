//
//  Invoker.m
//  命令模式
//
//  Created by 刘德福 on 2018/5/7.
//  Copyright © 2018年 ZGW. All rights reserved.
//

#import "Invoker.h"

@interface Invoker ()

@property (nonatomic, strong)NSMutableArray *array;

@end

@implementation Invoker

+ (instancetype)shareInstance
{
    static Invoker *shareInstance = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        shareInstance = [[self alloc] init];
        shareInstance.array = [NSMutableArray array];
        
    });
    
    return shareInstance;
}

- (void)geBack
{
    //1.获取数组中最后一个操作
    id <CommandProtocol> commandProtocol = self.array.lastObject;
    
    //2.操作调用，撤销步聚
    [commandProtocol backExecute];
    
    //3.删除最后的操作
    [self.array removeLastObject];
    
    
        NSLog(@"removeself.array--------:%ld",self.array.count);
    
}

- (void)addAndExcute:(id<CommandProtocol>)command
{
    //1.把操作添加到数组
    [self.array addObject:command];
    
    //2.让操作调用实现的协议方法
    [command execute];
    
    NSLog(@"addself.array--------:%ld",self.array.count);
}

@end
