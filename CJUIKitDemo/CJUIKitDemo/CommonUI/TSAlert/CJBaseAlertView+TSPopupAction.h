//
//  CJBaseAlertView+TSPopupAction.h
//  CJUIKitDemo
//
//  Created by ciyouzen on 2020/2/14.
//  Copyright © 2020 dvlproad. All rights reserved.
//

#import "CJBaseAlertView.h"

NS_ASSUME_NONNULL_BEGIN

@interface CJBaseAlertView (TSPopupAction)

/*
*  显示弹窗
*
*  @param shouldFitHeight  是否自动适应高度
*/
- (void)showWithShouldFitHeight:(BOOL)shouldFitHeight;

@end

NS_ASSUME_NONNULL_END
