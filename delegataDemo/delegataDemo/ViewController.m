//
//  ViewController.m
//  delegataDemo
//
//  Created by 大姚 on 16/8/2.
//  Copyright © 2016年 王姚. All rights reserved.
//

#import "ViewController.h"
#import "YYScrollView.h"
@interface ViewController ()<YYScrollViewDelegate>

@property (nonatomic, weak)UIImageView *imageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
}
#pragma mark -YYScrollViewDelegate

- (UIView *)要缩放的视图 {
    
    return _imageView;
}


#pragma mark -设置界面
- (void)setupUI {
    
    YYScrollView *SV = [[YYScrollView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
    SV.backgroundColor = [UIColor darkGrayColor];
    SV.center = self.view.center;
    
    [self.view addSubview:SV];
    UIImage *image = [UIImage imageNamed:@"20150528163520_NBVUs"];
    UIImageView *imageV = [[UIImageView alloc] initWithFrame:SV.bounds];

    imageV.image = image;
    
    [SV insertSubview:imageV atIndex:0];
    
    SV.delegate = self;
    
    _imageView = imageV;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
