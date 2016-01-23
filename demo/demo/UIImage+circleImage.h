//
//  UIImage+circleImage.h
//  demo
//
//  Created by sw on 16/1/24.
//  Copyright © 2016年 sw. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (circleImage)
/**
 * 返回一张圆形图片
 */
- (instancetype)circleImage;

/**
 * 返回一张圆形图片
 */
+ (instancetype)circleImageNamed:(NSString *)name;

@end
