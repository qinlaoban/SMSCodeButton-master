//
//  QRSNSCodeButtonViewController.m
//  SNSCodeTimerDemo
//
//  Created by Qin on 17-11-23.
//  Copyright (c) 2017年 Qin. All rights reserved.
//

#define UI_SCREEN_WIDTH                 ([[UIScreen mainScreen] bounds].size.width)
#define UI_SCREEN_HEIGHT                ([[UIScreen mainScreen] bounds].size.height)



#define kUIsendBtnX UI_SCREEN_WIDTH/2
#define kUIsendBtnY UI_SCREEN_HEIGHT/2
#define kUIsendBtnXCenter UI_SCREEN_WIDTH/2
#define kUIsendBtnYCenter UI_SCREEN_HEIGHT/2
#define kUIsendBtnWidth 120
#define kUIsendBtnHeight 50

#define kCountdownBeginNumber 59


#import "QRSNSCodeButtonViewController.h"
#import "SNSCodeCountdownButton.h"

@interface QRSNSCodeButtonViewController ()<SNSCodeCountdownButtonDelegate>
{
    SNSCodeCountdownButton * _sendButton;
}

@end

@implementation QRSNSCodeButtonViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setupSendSNSCodeButton];
}

- (void)setupSendSNSCodeButton {
    CGRect snsButtonFrame=CGRectMake(kUIsendBtnX,kUIsendBtnY,kUIsendBtnWidth,kUIsendBtnHeight);
    _sendButton = [[SNSCodeCountdownButton alloc] initWithFrame:snsButtonFrame];
    _sendButton.center = CGPointMake(kUIsendBtnXCenter, kUIsendBtnY);

    _sendButton.countdownBeginNumber = 10;
    _sendButton.delegate = self;
    [self.view addSubview:_sendButton];
}

- (void)snsCodeCountdownButtonClicked {
    NSLog(@"发送验证码");
}



////页面将要进入前台，开启定时器
//-(void)viewWillAppear:(BOOL)animated
//{
//    //开启定时器
//    [_countdownTimer setFireDate:[NSDate distantPast]];
//}
//
////页面消失，进入后台不显示该页面，关闭定时器
//-(void)viewDidDisappear:(BOOL)animated
//{
//    //关闭定时器
//    [_countdownTimer setFireDate:[NSDate distantFuture]];
//}
@end
