//
//  CJButton.m
//  CJUIKitDemo
//
//  Created by ciyouzen on 7/9/15.
//  Copyright (c) 2015 dvlproad. All rights reserved.
//

#import "CJButton.h"

@implementation CJButton

- (void)setSelected:(BOOL)selected {
    [super setSelected:selected];
    
    [self __updateBorderColor];
}

- (void)setEnabled:(BOOL)enabled {
    [super setEnabled:enabled];
    
    [self __updateBorderColor];
}

#pragma mark - Private Method
/**
 *  根据 selected 和 enabled 更新 borderColor
 */
- (void)__updateBorderColor {
    BOOL selected = self.selected;  //是否选中
    BOOL enabled = self.enabled;    //是否可操作
    
    if (enabled) {
        if (selected) {
            if (self.cjSelectedBorderColor) {
                self.layer.borderColor = self.cjSelectedBorderColor.CGColor;
            }
            
        } else {
            if (self.cjNormalBorderColor) {
                self.layer.borderColor = self.cjNormalBorderColor.CGColor;
            }
            
        }
    } else {
        if (self.cjDisabledBorderColor) {
            self.layer.borderColor = self.cjDisabledBorderColor.CGColor;
        }
    }
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
