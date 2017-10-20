//
//  MyTriangleButton.m
//  myCarthageFramework
//
//  Created by APiX on 2017/10/20.
//  Copyright © 2017年 APiX. All rights reserved.
//

#import "MyTriangleButton.h"

@implementation MyTriangleButton


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    CGFloat viewWidth = self.frame.size.width;
    CGFloat viewHeight = self.frame.size.height;
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextMoveToPoint(context, 0, 0);
    
    if (self.isSelected && self.isEnabled) {
        CGPoint sPoints[7];
        
        sPoints[0] = CGPointMake(viewWidth, 0);
        sPoints[1] = CGPointMake(viewWidth, viewHeight);
        sPoints[2] = CGPointMake(viewWidth/2 + 5, viewHeight);
        sPoints[3] = CGPointMake(viewWidth/2, viewHeight - 5);
        sPoints[4] = CGPointMake(viewWidth/2 - 5, viewHeight);
        sPoints[5] = CGPointMake(0, viewHeight);
        sPoints[6] = CGPointMake(0, 0);
        
        CGContextAddLines(context, sPoints, 7);
    } else {
        CGPoint sPoints[4];
        
        sPoints[0] = CGPointMake(viewWidth, 0);
        sPoints[1] = CGPointMake(viewWidth, viewHeight);
        sPoints[2] = CGPointMake(0, viewHeight);
        sPoints[3] = CGPointMake(0, 0);
        
        CGContextAddLines(context, sPoints, 4);
    }
    
    
    CGContextSetFillColorWithColor(context, [UIColor blackColor].CGColor);
    CGContextFillPath(context);
}


@end
