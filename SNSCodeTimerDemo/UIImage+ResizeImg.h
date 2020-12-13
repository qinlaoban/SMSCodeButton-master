//
//  QRSNSCodeButtonViewController.h
//  SNSCodeTimerDemo
//
//  Created by Qin on 17-11-23.
//  Copyright (c) 2017年 Qin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ResizeImg)
+ (UIImage *)imageWithName:(NSString *)name;
+ (UIImage *)resizedImage:(NSString *)name;
+ (UIImage *)resizedImage:(NSString *)name left:(CGFloat)left top:(CGFloat)top;
@end
