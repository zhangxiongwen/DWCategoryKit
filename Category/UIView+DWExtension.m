//
//  UIView+Extension.m
//  test
//
//  Created by Dwang on 2018/1/23.
//  Copyright © 2018年 CoderDwang. All rights reserved.
//

#import "UIView+DWExtension.h"
#import <objc/runtime.h>

@implementation UIView (DWExtension)

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Method sysMethod = class_getInstanceMethod(self, @selector(initWithFrame:));
        Method dw_Method = class_getInstanceMethod(self, @selector(dw_initWithFrame:));
        method_exchangeImplementations(sysMethod, dw_Method);
    });
}

- (id)dw_initWithFrame:(CGRect)frame {
    UIView *view = [self dw_initWithFrame:frame];
    [self loadView];
    return view;
}

- (void)loadView {
}

- (UIImage *)shotView {
    UIGraphicsBeginImageContext(self.bounds.size);
    [self.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

- (UIImage *)shotViewWithScope:(CGRect)scope {
    CGImageRef imageRef = CGImageCreateWithImageInRect([self shotView].CGImage, scope);
    UIGraphicsBeginImageContext(scope.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGRect rect = CGRectMake(0, 0, scope.size.width, scope.size.height);
    CGContextTranslateCTM(context, 0, rect.size.height);
    CGContextScaleCTM(context, 1.0f, -1.0f);
    CGContextDrawImage(context, rect, imageRef);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    CGImageRelease(imageRef);
    CGContextRelease(context);
    return image;
}

@end
