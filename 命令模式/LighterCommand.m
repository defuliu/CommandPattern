//
//  LighterCommand.m
//  命令模式
//
//  Created by 刘德福 on 2018/5/7.
//  Copyright © 2018年 ZGW. All rights reserved.
//

#import "LighterCommand.h"

@interface LighterCommand ()

@property (nonatomic, strong)Receiver *receiver;
@property (nonatomic, assign)CGFloat  parameter;
@end

@implementation LighterCommand


- (instancetype)initWithLighter:(Receiver *)receiver pamameter:(CGFloat)parameter
{
    self = [super init];
    if (self) {
        self.receiver = receiver;
        self.parameter = parameter;
    }
    return self;
}

- (void)execute
{
   [self.receiver macLighter:self.parameter];
}

- (void)backExecute
{
    [self.receiver mackDarker:self.parameter];
}

@end
