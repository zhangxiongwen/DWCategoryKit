//
//  DWTools.h
//  Lottery_King
//
//  Created by Dwang on 2017/12/5.
//  Copyright © 2017年 CoderDwang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DWTools : NSObject

/**
 获取当前时间

 @param type 设置你想要的格式<YYYY-MM-dd HH:mm:ss>(hh与HH的区别:分别表示12小时制,24小时制)
 @return 带有格式的时间
 */
+ (NSString *)getCurrentTimesWithType:(NSString *)type;

@end
