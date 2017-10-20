//
//  MyCustomView.m
//  CarthageTest
//
//  Created by APiX on 2017/10/20.
//  Copyright © 2017年 APiX. All rights reserved.
//

#import "MyCustomView.h"

@implementation MyCustomView

- (instancetype)initWithText:(NSString *)text {
    if (self = [super init]) {
        self.backgroundColor = [UIColor lightGrayColor];
        
        UILabel *label = [[UILabel alloc] init];
        label.text = text;
        label.textColor = [UIColor redColor];
        label.font = [UIFont systemFontOfSize:20];
        [self addSubview:label];
        
        NSLayoutConstraint *cons1 = [NSLayoutConstraint constraintWithItem:label attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0];
        NSLayoutConstraint *cons2 = [NSLayoutConstraint constraintWithItem:label attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0];
        
        [label addConstraints:@[cons1, cons2]];
    }
    
    return self;
}

@end
