////  UICollectionViewCell+DWExtension.m
//  test
//
//  Created by Dwang on 2018/6/19.
//	QQ群:	577506623
//	GitHub:	https://github.com/CoderDwang
//  Copyright © 2018年 CoderDwang. All rights reserved.
//

#import "UICollectionViewCell+DWExtension.h"
#import <objc/runtime.h>

@implementation UICollectionViewCell (DWExtension)

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Method sys = class_getInstanceMethod(self, @selector(initWithFrame:));
        Method my = class_getInstanceMethod(self, @selector(ltc_initWithFrame:));
        method_exchangeImplementations(sys, my);
    });
}

- (id)ltc_initWithFrame:(CGRect)frame {
    UICollectionViewCell *cell = [self ltc_initWithFrame:frame];
    [self setCellINFO];
    return cell;
}

- (void)setCellINFO {
    
}


@end
