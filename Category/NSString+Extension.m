//
//  NSString+CBExtension.m
//  ClipboardTool_iOS
//
//  Created by dawng on 2017/8/29.
//  Copyright © 2017年 dwang. All rights reserved.
//

#import "NSString+Extension.h"
#import "AESCrypt.h"

static NSString *const kAESPassword = @"NSString+Extension&CderDwang";

@implementation NSString (Extension)
@dynamic removeSpace;
@dynamic removeline;
@dynamic isMobNumber;
@dynamic isUrllink;
@dynamic isIDCard;
@dynamic isEMail;
@dynamic encryptAESString;
@dynamic decryptAESString;
@dynamic encryptBase64String;
@dynamic decryptBase64String;
@dynamic getUserDefaultsINFO;
@dynamic removeUserDefaultsINFO;

- (NSString *)removeSpace {
    return [self stringByReplacingOccurrencesOfString:@" " withString:@""];
}

- (NSString *)removeline {
    return [self stringByReplacingOccurrencesOfString:@"-" withString:@""];
}

- (BOOL)isMobNumber {
    NSString * MOBIL = @"^1(3[0-9]|5[0-35-9]|8[025-9])\\d{8}$";
    NSString * CM = @"^1(34[0-8]|(3[5-9]|5[017-9]|8[2378])\\d)\\d{7}$";
    NSString * CU = @"^1(3[0-2]|5[256]|8[56])\\d{8}$";
    NSString * CT = @"^1((33|53|8[019])[0-9]|349)\\d{7}$";
    NSPredicate *regextestmobile = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", MOBIL];
    NSPredicate *regextestcm = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", CM];
    NSPredicate *regextestcu = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", CU];
    NSPredicate *regextestct = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", CT];
    if (([regextestmobile evaluateWithObject:self]
         || [regextestcm evaluateWithObject:self]
         || [regextestct evaluateWithObject:self]
         || [regextestcu evaluateWithObject:self])) {
        return YES;
    }
    return NO;
}

- (BOOL)isUrllink {
    NSError *error;
    NSString *regulaStr =@"\\bhttps?://[a-zA-Z0-9\\-.]+(?::(\\d+))?(?:(?:/[a-zA-Z0-9\\-._?,'+\\&%$=~*!():@\\\\]*)+)?";
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:regulaStr options:NSRegularExpressionCaseInsensitive error:&error];
    NSArray *arrayOfAllMatches = [regex matchesInString:self options:0 range:NSMakeRange(0, [self length])];
    if (arrayOfAllMatches.count) {
        return YES;
    }
    return NO;
}

- (BOOL)isIDCard {
    NSString *regex = @"^(\\d{14}|\\d{17})(\\d|[xX])$";
    NSPredicate *identityCardPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    return [identityCardPredicate evaluateWithObject:self];
}

- (BOOL)isEMail {
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:self];
}

- (NSString *)encryptAESString {
    return [AESCrypt encrypt:self password:kAESPassword];
}

- (NSString *)decryptAESString {
    return [AESCrypt decrypt:self password:kAESPassword];
}

- (NSString *)encryptBase64String {
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    return [data base64EncodedStringWithOptions:0];
}

- (NSString *)decryptBase64String {
    NSData *data = [[NSData alloc]initWithBase64EncodedString:self options:0];
    return [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
}

- (id)getUserDefaultsINFO {
   return [[NSUserDefaults standardUserDefaults] objectForKey:self];
}

- (BOOL)removeUserDefaultsINFO {
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:self];
    return [[NSUserDefaults standardUserDefaults] synchronize];
}

@end