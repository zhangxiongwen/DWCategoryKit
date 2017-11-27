//
//  NSString+CBExtension.h
//  ClipboardTool_iOS
//
//  Created by dawng on 2017/8/29.
//  Copyright © 2017年 dwang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Extension)

/** 格式化字符串，去除@" " */
@property(nonatomic, copy, readonly) NSString *removeSpace;

/** 格式化字符串，去除@"-" */
@property(nonatomic, copy, readonly) NSString *removeline;

/** 是否为手机号 */
@property(nonatomic, assign, readonly) BOOL isMobNumber;

/** 是否为网络链接 */
@property(nonatomic, assign, readonly) BOOL isUrllink;

/** 是否为身份证号 */
@property(nonatomic, assign, readonly) BOOL isIDCard;

/** 是否为邮箱地址 */
@property(nonatomic, assign, readonly) BOOL isEMail;

/** AES加密 */
@property(nonatomic, copy, readonly) NSString *encryptAESString;

/** AES解密 */
@property(nonatomic, copy, readonly) NSString *decryptAESString;

/** 转换为Base64编码 */
@property(nonatomic, copy, readonly) NSString *encryptBase64String;

/** 将Base64编码还原 */
@property(nonatomic, copy, readonly) NSString *decryptBase64String;

/** 获取偏好设置存储信息 */
@property(nonatomic, assign, readonly) id getUserDefaultsINFO;

/** 删除偏好设置存储信息 */
@property(nonatomic, assign, readonly) BOOL removeUserDefaultsINFO;

@end
