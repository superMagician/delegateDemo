//
//  YYScrollView.m
//  delegataDemo
//
//  Created by 大姚 on 16/8/2.
//  Copyright © 2016年 王姚. All rights reserved.
//

#import "YYScrollView.h"

@implementation YYScrollView

- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        [self setupUI];
    }
    return self;
}

- (void)setupUI {
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeContactAdd];
    
    button.center = self.center;
    
    [self addSubview:button];
    
    [button addTarget:self action:@selector(缩放给定的视图) forControlEvents:UIControlEventTouchUpInside];
    
    
}

- (void)缩放给定的视图 {
    
    UIView *view = [_delegate 要缩放的视图];
    
    CGFloat scale = 0.9;
    view.transform = CGAffineTransformScale(view.transform, scale, scale);
}

@end
