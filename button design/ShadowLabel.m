//
//  ShadowLabel.m
//  button design
//
//  Created by mokako on 2015/12/26.
//  Copyright © 2015年 mocako. All rights reserved.
//

#import "ShadowLabel.h"

@implementation ShadowLabel

-(id)init{
    self = [super init];
    if(self){
        self.offset = CGSizeZero;
        self.radius = 0.0;
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);
    CGContextSetShadowWithColor(context, self.offset, self.radius, [self.color CGColor]);
    [super drawRect:rect];
    CGContextRestoreGState(context);
}


-(void)setBlurShadow:(CGSize)offset radius:(CGFloat)radius color:(UIColor *)color{
    self.offset = offset;
    self.radius = radius;
    self.color = color;
    [self setNeedsDisplay];
}
@end
