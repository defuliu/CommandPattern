//
//  ViewController.m
//  命令模式
//
//  Created by 刘德福 on 2018/5/4.
//  Copyright © 2018年 ZGW. All rights reserved.
//

#import "ViewController.h"
#import "Receiver.h"
#import "DarkCommand.h"
#import "LighterCommand.h"
#import "Invoker.h"

@interface ViewController ()

@property (nonatomic, strong)Receiver *recevier;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.recevier = [[Receiver alloc] init];
    self.recevier.receiverView = self.view;
}

- (IBAction)btnAction:(UIButton *)sender {
    
    if (sender.tag == 10) {
        DarkCommand *darkCommand = [[DarkCommand alloc] initWithDark:self.recevier parameter:0.1];
        [[Invoker shareInstance] addAndExcute:darkCommand];
    }
    else if (sender.tag == 20){
      
        LighterCommand *lightCommand = [[LighterCommand alloc] initWithLighter:self.recevier pamameter:0.1];
       [[Invoker shareInstance] addAndExcute:lightCommand];
    }
    else {
        [[Invoker shareInstance] geBack];
    }

    
    
}


@end
