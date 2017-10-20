//
//  ViewController.m
//  MyCarthageDemo
//
//  Created by APiX on 2017/10/20.
//  Copyright © 2017年 APiX. All rights reserved.
//

#import "ViewController.h"
#import "MyTriangleButton.h"

@interface ViewController ()

@property (nonatomic, strong) NSMutableArray<MyTriangleButton *> *buttonArr;


@end

@implementation ViewController
- (NSMutableArray *)buttonArr {
    if (!_buttonArr) {
        _buttonArr = [NSMutableArray array];
    }
    return _buttonArr;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;
//    CGFloat screenHeight = [UIScreen mainScreen].bounds.size.height;
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 200, screenWidth, 200)];
    view.backgroundColor = [UIColor greenColor];
    [self.view addSubview:view];
    
    
    for (int i=0;i<3;i++) {
        CGFloat width = screenWidth/3;
        MyTriangleButton *button = [[MyTriangleButton alloc] initWithFrame:CGRectMake(width * i, 200 - 30 + 5, width, 30)];
        [button setTitle:[NSString stringWithFormat:@"按钮%d", i] forState:UIControlStateNormal];
        [button setBackgroundColor:[UIColor clearColor]];
        [button addTarget:self action:@selector(onButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
        if (i == 1) button.selected = YES;
        [self.view addSubview:button];
        
        [self.buttonArr addObject:button];
    }
}

- (void)onButtonClicked:(MyTriangleButton *)button {
    if (button.selected) return;
    
    button.selected = YES;
    
    for (MyTriangleButton *buttonItem in self.buttonArr) {
        if (button == buttonItem) continue;
        buttonItem.selected = NO;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
