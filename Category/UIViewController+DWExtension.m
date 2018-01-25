//
//  UIViewController+DWExtension.m
//  test
//
//  Created by Dwang on 2018/1/24.
//  Copyright © 2018年 CoderDwang. All rights reserved.
//

#import "UIViewController+DWExtension.h"
#import <objc/runtime.h>

static const char *DWBaseViewKey = "dw_baseViewKey";
@implementation UIViewController (DWExtension)

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Method sysMethod = class_getInstanceMethod(self, @selector(viewDidLoad));
        Method dw_Method = class_getInstanceMethod(self, @selector(dw_viewDidLoad));
        method_exchangeImplementations(sysMethod, dw_Method);
    });
}

- (void)dw_viewDidLoad {
    [self dw_viewDidLoad];
    self.baseView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    self.baseView.backgroundColor = self.view.backgroundColor;
    self.baseView.showsHorizontalScrollIndicator = NO;
    self.baseView.showsVerticalScrollIndicator = NO;
    self.baseView.alwaysBounceVertical = YES;
    self.baseView.scrollEnabled = NO;
    [self.view addSubview:self.baseView];
    [self.view sendSubviewToBack:self.baseView];
    [self setUI];
}

- (void)setUI {    
}

- (void)setBaseView:(UIScrollView *)baseView {
    objc_setAssociatedObject([UIScrollView class], DWBaseViewKey, baseView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIScrollView *)baseView {
    return objc_getAssociatedObject([UIScrollView class], DWBaseViewKey);
}

@end
