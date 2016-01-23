//
//  NSString+sandboxDirectory.m
//  demo
//
//  Created by sw on 16/1/24.
//  Copyright © 2016年 sw. All rights reserved.
//

#import "NSString+sandboxDirectory.h"

@implementation NSString (sandboxDirectory)

- (NSString *)cacheDir
{
    // 1.获取cache目录
    NSString *dir = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject];
    return [dir stringByAppendingPathComponent:[self lastPathComponent]];
}
- (NSString *)documentDir {
    NSString *dir = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    return [dir stringByAppendingPathComponent:[self lastPathComponent]];
}

- (NSString *)tmpDir {
    NSString *dir = NSTemporaryDirectory();
    return [dir stringByAppendingPathComponent:[self lastPathComponent]];
}

@end
