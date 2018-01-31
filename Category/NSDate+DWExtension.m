//
//  NSDate+Extension.m
//  test
//
//  Created by Dwang on 2018/1/10.
//  Copyright © 2018年 CoderDwang. All rights reserved.
//

#import "NSDate+DWExtension.h"

@implementation NSDate (DWExtension)

+ (NSString *)dateCurrentTimeWithFormat:(NSString *)format {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:format];
    NSDate *datenow = [NSDate date];
    NSString *currentTimeString = [formatter stringFromDate:datenow];
    return currentTimeString;
}

+ (NSString *)dateTimeStamp:(NSString *)timeStamp withFormat:(NSString *)format {
    NSTimeInterval time = [timeStamp doubleValue];
    NSDate *detaildate = [NSDate dateWithTimeIntervalSince1970:time];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:format];
    return [dateFormatter stringFromDate:detaildate];
}

@end
