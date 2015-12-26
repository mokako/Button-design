//
//  UIColor+Hex.h
//  Sketch
//
//  Created by mokako on 2014/11/19.
//  Copyright (c) 2014年 moca. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Hex)
+ (UIColor *)colorWithHex:(NSString *)colorCode;
+ (UIColor *)colorWithHex:(NSString *)colorCode alpha:(CGFloat)alpha;
@end
