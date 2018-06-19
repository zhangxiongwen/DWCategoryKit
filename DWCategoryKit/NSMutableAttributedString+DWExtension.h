////  NSMutableAttributedString+DWExtension.h
//  test
//
//  Created by Dwang on 2018/6/19.
//	QQ群:	577506623
//	GitHub:	https://github.com/CoderDwang
//  Copyright © 2018年 CoderDwang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSMutableAttributedString (DWExtension)

/**
 修改文字的颜色与字体
 
 @param font 字体
 @param color 颜色
 @param totalString 总字符
 @param subArray 修改的字符
 @return 修改完成的总字符
 */
+ (NSMutableAttributedString *)changeAttributeWithFont:(UIFont *)font color:(UIColor *)color totalString:(NSString *)totalString subStringArray:(NSArray *)subArray;

/**
 显示html内容
 
 @param font 字体
 @param lineSpec 行间距
 @param wordSpec 字间距
 @param string 总字符
 @return html内容
 */
+ (instancetype)htmlWithFont:(UIFont *)font lineSpec:(CGFloat)lineSpec wordSpec:(CGFloat)wordSpec string:(NSString *)string;

/**
 图文混排
 
 @param image 图片
 @param frame 图片frame
 @param string 文本
 @return 图文内容
 */
+ (instancetype)graphicMixedWithImage:(UIImage *)image frame:(CGRect)frame string:(NSString *)string;


@end
