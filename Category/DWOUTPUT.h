//
//  DWOUTPUT.h
//  DWCategory
//
//  Created by Dwang on 2017/12/2.
//  Copyright © 2017年 CoderDwang. All rights reserved.
//

#ifndef DWOUTPUT_h
#define DWOUTPUT_h

/** 持久化对象 */
#define selfClass(class) self.class = class

/** NSUserDefaults */
#define UserDefaults [NSUserDefaults standardUserDefaults]

/** 设置图片 */
#define UIImageName(imgName) [UIImage imageNamed:imgName]

/** 设置字体尺寸 */
#define UIFontSizeMake(fontSize) [UIFont systemFontOfSize:fontSize]

/** 设置字体及字体尺寸 */
#define UIFontMakeNameWithSize(fontName, fontSize) [UIFont fontWithName:fontName size:fontSize]

/** 获取iOS版本号 */
#define IOS_VERSION [[[UIDevice currentDevice] systemVersion] floatValue]

/** weakOBJ */
#define weakOBJ(obj)  __weak typeof(obj) weak_##obj = obj;

/** strongOBJ */
#define strongOBJ(obj)  __strong typeof(obj) strong_##obj = weak##obj;


#ifdef DEBUG
#define NSLog( s, ... ) NSLog( @"\n[所在方法:%s]\n[所在行数:%d]\n[打印内容:%@]", __func__, __LINE__, [NSString stringWithFormat:(s), ##__VA_ARGS__])
#else
#define NSLog(...)
#endif

#endif /* DWOUTPUT_h */
