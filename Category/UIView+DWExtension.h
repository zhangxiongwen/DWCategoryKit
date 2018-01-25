//
//  UIView+Extension.h
//  test
//
//  Created by Dwang on 2018/1/23.
//  Copyright © 2018年 CoderDwang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (DWExtension)

/** 截取某个view */
- (UIImage *)shotView;

/** 截图某个view的某块区域 */
- (UIImage *)shotViewWithScope:(CGRect)scope;

@end
