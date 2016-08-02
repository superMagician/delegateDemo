//
//  YYScrollView.h
//  delegataDemo
//
//  Created by 大姚 on 16/8/2.
//  Copyright © 2016年 王姚. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YYScrollViewDelegate.h"
@interface YYScrollView : UIView
@property (nonatomic, weak) id<YYScrollViewDelegate> delegate;
@end
