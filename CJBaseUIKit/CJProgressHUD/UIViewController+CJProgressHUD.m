//
//  UIViewController+CJProgressHUD.m
//  CJUIKitDemo
//
//  Created by ciyouzen on 2018/11/1.
//  Copyright © 2018年 dvlproad. All rights reserved.
//

#import "UIViewController+CJProgressHUD.h"
#import <objc/runtime.h>
#import "CJProgressHUD.h"
#import "CJToast.h"

@interface UIViewController () {
    
}
@property (nonatomic, strong) CJProgressHUD *cj_ProgressHUD;


@end

@implementation UIViewController (CJProgressHUD)

//cj_ProgressHUD
- (CJProgressHUD *)cj_ProgressHUD {
    return objc_getAssociatedObject(self, @selector(cj_ProgressHUD));
}

- (void)setCj_ProgressHUD:(CJProgressHUD *)cj_ProgressHUD {
    objc_setAssociatedObject(self, @selector(cj_ProgressHUD), cj_ProgressHUD, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

/// 显示HUD
- (void)showDemoProgressHUD {
    if (!self.cj_ProgressHUD) {
        self.cj_ProgressHUD = [CJProgressHUD defaultProgressHUD];
    }
    
    [self.cj_ProgressHUD showInView:self.view withShowBackground:NO];
}

/// 隐藏HUD
- (void)dismissDemoProgressHUD {
    BOOL dismissSuccess = [self.cj_ProgressHUD dismissWithForce:NO];
    if (dismissSuccess) {
        self.cj_ProgressHUD = nil;
    }
}

/*
/// 上传过程中显示开始上传的进度提示
- (void)cjdemo_showStartProgressMessage:(NSString * _Nullable)startProgressMessage {
    [self cj_showChrysanthemumHUDWithMessage:startProgressMessage animated:YES];
}

/// 上传过程中显示正在上传的进度提示
- (void)cjdemo_showProgressingMessage:(NSString *)progressingMessage {
    [self cj_updateChrysanthemumHUDWithMessage:progressingMessage];
}

/// 上传过程中显示结束上传的进度提示
- (void)cjdemo_showEndProgressMessage:(NSString *)endProgressMessage isSuccess:(BOOL)isSuccess {
    [self cj_updateChrysanthemumHUDWithMessage:endProgressMessage];
    if (isSuccess) {
        [self cj_hideChrysanthemumHUDWithAnimated:YES afterDelay:0.35];
    } else {
        [self cj_hideChrysanthemumHUDWithAnimated:YES afterDelay:1];
    }
}
*/

@end
