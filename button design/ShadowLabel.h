//
//  ShadowLabel.h
//  button design
//
//  Created by mokako on 2015/12/26.
//  Copyright © 2015年 mocako. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ShadowLabel : UILabel
@property (nonatomic) CGSize offset;
@property (nonatomic) CGFloat radius;
@property (nonatomic) UIColor *color;
-(void)setBlurShadow:(CGSize)offset radius:(CGFloat)radius color:(UIColor *)color;
@end
