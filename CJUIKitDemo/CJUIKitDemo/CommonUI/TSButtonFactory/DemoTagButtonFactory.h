//
//  DemoTagButtonFactory.h
//  CJUIKitDemo
//
//  Created by ciyouzen on 2018/9/3.
//  Copyright © 2017年 dvlproad. All rights reserved.
//
//  想两改变两个子控件的显示位置，可以分别通过setTitleEdgeInsets和setImageEdgeInsets来实现。需要注意的是，对titleLabel和imageView设置偏移，是针对它当前的位置起作用的，并不是针对它距离button边框的距离的

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#ifdef TEST_CJBASEUIKIT_POD
#import "UIButton+CJMoreProperty.h"
#import "UIColor+CJHex.h"
#import "CJBadgeButton.h"
#else
#import <CJBaseUIKit/UIButton+CJMoreProperty.h>
#import <CJBaseUIKit/UIColor+CJHex.h>
#import <CJBaseUIKit/CJBadgeButton.h>
#endif

@interface DemoTagButtonFactory : NSObject

///蓝色背景按钮
+ (UIButton *)blueButton;

///白色背景按钮
+ (UIButton *)whiteButton;

+ (void)removeObserveForButton:(UIButton *)button;

@end
