//
//  QRSNSCodeButtonViewController.h
//  SNSCodeTimerDemo
//
//  Created by Qin on 17-11-23.
//  Copyright (c) 2017年 Qin. All rights reserved.
//

#import "UIImage+ResizeImg.h"

@implementation UIImage (ResizeImg)
+ (UIImage *)imageWithName:(NSString *)name
{
    return [self imageNamed:name];
}

+ (UIImage *)resizedImage:(NSString *)name
{
    return [self resizedImage:name left:0.5 top:0.5];
}

+ (UIImage *)resizedImage:(NSString *)name left:(CGFloat)left top:(CGFloat)top
{
    UIImage *image = [self imageWithName:name];
    
    return [image stretchableImageWithLeftCapWidth:image.size.width * left topCapHeight:image.size.height * top];
}
@end
