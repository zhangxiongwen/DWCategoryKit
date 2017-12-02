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

/** 设置字体尺寸 */
#define FontSizeMake(fontSize) [UIFont systemFontOfSize:fontSize]

/** 设置字体及字体尺寸 */
#define FontMakeNameWithSize(fontName, fontSize) [UIFont fontWithName:fontName size:fontSize]

/** 设置RGBA色彩 */
#define UIColorWithRGBA(r, g, b, a) [UIColor colorWithRed:r/255.00 green:g/255.00 blue:b/255.00 alpha:a]

/** 设置RGB色彩 */
#define UIColorMakeRGB(r, g, b) [UIColor colorWithRed:r/255.00 green:g/255.00 blue:b/255.00 alpha:1.0]

#ifdef DEBUG
#define NSLog( s, ... ) NSLog( @"\n[所在文件:%@]\n[所在方法:%s]\n[所在行数:%d]\n[打印内容:%@]", NSStringFromClass([self class]), __func__, __LINE__, [NSString stringWithFormat:(s), ##__VA_ARGS__])
#else
#define NSLog(...)
#endif

#endif /* DWOUTPUT_h */
