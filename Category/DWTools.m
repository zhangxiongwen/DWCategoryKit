//
//  DWTools.m
//  Lottery_King
//
//  Created by Dwang on 2017/12/5.
//  Copyright © 2017年 CoderDwang. All rights reserved.
//

#import "DWTools.h"

@implementation DWTools

+ (NSString *)getCurrentTimesWithType:(NSString *)type {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:type];
    NSDate *datenow = [NSDate date];
    NSString *currentTimeString = [formatter stringFromDate:datenow];
    return currentTimeString;
}

@end
