////  UITableViewCell+DWExtension.m
//  test
//
//  Created by Dwang on 2018/6/19.
//	QQ群:	577506623
//	GitHub:	https://github.com/CoderDwang
//  Copyright © 2018年 CoderDwang. All rights reserved.
//

#import "UITableViewCell+DWExtension.h"
#import <objc/runtime.h>

@implementation UITableViewCell (DWExtension)

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Method sys = class_getInstanceMethod(self, @selector(initWithStyle:reuseIdentifier:));
        Method my = class_getInstanceMethod(self, @selector(ltc_initWithStyle:reuseIdentifier:));
        method_exchangeImplementations(sys, my);
    });
}

- (id)ltc_initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    UITableViewCell *cell = [self ltc_initWithStyle:style reuseIdentifier:reuseIdentifier];
    [self setCellINFO];
    return cell;
}

- (void)setCellINFO {
    
}

@end
