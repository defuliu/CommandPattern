//
//  DarkCommand.m
//  命令模式
//
//  Created by 刘德福 on 2018/5/7.
//  Copyright © 2018年 ZGW. All rights reserved.
//

#import "DarkCommand.h"

@interface DarkCommand ()
@property (nonatomic, strong)Receiver *receiver;
@property (nonatomic, assign)CGFloat  parameter;
@end

@implementation DarkCommand

- (instancetype)initWithDark:(Receiver *)receiver parameter:(CGFloat)parameter
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
    [self.receiver mackDarker:self.parameter];
}

- (void)backExecute
{
    [self.receiver macLighter:self.parameter];
    
}


@end
