////  NSMutableAttributedString+DWExtension.m
//  test
//
//  Created by Dwang on 2018/6/19.
//	QQ群:	577506623
//	GitHub:	https://github.com/CoderDwang
//  Copyright © 2018年 CoderDwang. All rights reserved.
//

#import "NSMutableAttributedString+DWExtension.h"

@implementation NSMutableAttributedString (DWExtension)

+ (instancetype)changeAttributeWithFont:(UIFont *)font color:(UIColor *)color totalString:(NSString *)totalString subStringArray:(NSArray *)subArray {
    NSMutableAttributedString *attributedStr = [[NSMutableAttributedString alloc] initWithString:totalString];
    for (NSString *rangeStr in subArray) {
        NSRange range = [totalString rangeOfString:rangeStr options:NSBackwardsSearch];
        [attributedStr addAttribute:NSForegroundColorAttributeName value:color range:range];
        [attributedStr addAttribute:NSFontAttributeName value:font range:range];
    }
    return attributedStr;
}

+ (instancetype)htmlWithFont:(UIFont *)font lineSpec:(CGFloat)lineSpec wordSpec:(CGFloat)wordSpec string:(NSString *)string {
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:lineSpec];
    NSMutableAttributedString *attString = [[NSMutableAttributedString alloc]initWithData:[string dataUsingEncoding:NSUnicodeStringEncoding] options:@{NSDocumentTypeDocumentAttribute:NSHTMLTextDocumentType} documentAttributes:nil error:nil];
    [attString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [attString length])];
    [attString addAttribute:NSKernAttributeName value:@(wordSpec) range:NSMakeRange(0, [attString length])];
    [attString addAttribute:NSFontAttributeName value:font range:NSMakeRange(0, [attString length])];
    return attString;
}

+ (instancetype)graphicMixedWithImage:(UIImage *)image frame:(CGRect)frame string:(NSString *)string {
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] init];
    NSTextAttachment *attach = [[NSTextAttachment alloc] init];
    attach.image = image;
    attach.bounds = frame;
    NSAttributedString *attString = [NSAttributedString attributedStringWithAttachment:attach];
    [attributedString appendAttributedString:attString];
    //    [attributedString addAttribute:NSBaselineOffsetAttributeName value:@(-10) range:NSMakeRange(0, attString.length)];
    [attributedString appendAttributedString:[[NSAttributedString alloc] initWithString:string]];
    return attributedString;
}


@end
