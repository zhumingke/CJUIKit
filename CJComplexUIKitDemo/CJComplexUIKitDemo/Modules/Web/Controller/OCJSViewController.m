//
//  OCJSViewController.m
//  CJComplexUIKitDemo
//
//  Created by ciyouzen on 2019/1/16.
//  Copyright © 2019 dvlproad. All rights reserved.
//

#import "OCJSViewController.h"
#import "DemoButtonFactory.h"
#import "AppInfo.h"

@interface OCJSViewController () <WKUIDelegate, WKNavigationDelegate, WKScriptMessageHandler>

@end

@implementation OCJSViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"OC调用JS", nil);
    
    //NSString *networkUrl = @"http://www.bbxpc.com/app_html/about_us/about.html";
    //self.networkUrl = networkUrl;
    NSString *localHtmlUrl = [[NSBundle mainBundle] pathForResource:@"OCJS.html" ofType:nil];
    NSURL *localHtmlURL = [NSURL fileURLWithPath:localHtmlUrl];
    [self reloadLocalWebWithUrl:localHtmlUrl]; //加载本地网页
    
    self.webViewDidFinishNavigationBlcok = ^(WKWebView *webView) {
        if ([localHtmlURL isEqual:webView.URL]) {
            NSString *appVersion = [AppInfo systemAppVersion];
            NSString *jsString = [NSString stringWithFormat:@"setEdition('V%@')", appVersion];
            [webView evaluateJavaScript:jsString completionHandler:^(id _Nullable object, NSError * _Nullable error) {
                NSLog(@"OC执行JS完成");
            }];
        }
    };
    self.webView.UIDelegate = self;
    self.webView.navigationDelegate = self;
    
    
    UIButton *blueButton = [DemoButtonFactory blueButton];
    [blueButton setTitle:NSLocalizedString(@"OC调用JS(改值)", nil) forState:UIControlStateNormal];
    [blueButton addTarget:self action:@selector(updateWebText)
         forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:blueButton];
    [blueButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self.view);
        make.left.mas_equalTo(self.view).mas_offset(30);
        make.height.mas_equalTo(44);
        make.bottom.mas_equalTo(self.view).mas_offset(-20);
    }];
    
    UIButton *blueButton2 = [DemoButtonFactory blueButton];
    [blueButton2 setTitle:NSLocalizedString(@"OC调用JS(弹窗)", nil) forState:UIControlStateNormal];
    [blueButton2 addTarget:self action:@selector(showWebAlert)
         forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:blueButton2];
    [blueButton2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self.view);
        make.left.mas_equalTo(self.view).mas_offset(30);
        make.height.mas_equalTo(44);
        make.bottom.mas_equalTo(blueButton.mas_top).mas_offset(-20);
    }];
}

- (void)updateWebText {
    NSString *jsString = [NSString stringWithFormat:@"updateText('这是OC调用JS来修改后的值:%ld')", random()%1000];
    [self.webView evaluateJavaScript:jsString completionHandler:^(id _Nullable object, NSError * _Nullable error) {
        NSLog(@"OC执行JS完成--改值");
    }];
}

- (void)showWebAlert {
    NSString *appVersion = [AppInfo systemAppVersion];
    NSString *jsString = [NSString stringWithFormat:@"showWebAlert('版本:%@')", appVersion];
    [self.webView evaluateJavaScript:jsString completionHandler:^(id _Nullable object, NSError * _Nullable error) {
        NSLog(@"OC执行JS完成--弹窗(需在WKUIDelegate中处理)");
    }];
}

/*
#pragma mark - WKUIDelegate
// 相比于UIWebView,WKWebView对警告窗 确认面板 输入框并不能直接显示.是通过WKUIDelegate代理方法收到对应的回调方法.如下所示.
//接收到警告面板
- (void)webView:(WKWebView *)webView runJavaScriptAlertPanelWithMessage:(NSString *)message initiatedByFrame:(WKFrameInfo *)frame completionHandler:(void (^)(void))completionHandler
{
    [CJToast shortShowMessage:message];
}

//接收到确认面板
- (void)webView:(WKWebView *)webView runJavaScriptConfirmPanelWithMessage:(NSString *)message initiatedByFrame:(WKFrameInfo *)frame completionHandler:(void (^)(BOOL result))completionHandler
{
    [CJToast shortShowMessage:message];
}

//接收到输入框
- (void)webView:(WKWebView *)webView runJavaScriptTextInputPanelWithPrompt:(NSString *)prompt defaultText:(nullable NSString *)defaultText initiatedByFrame:(WKFrameInfo *)frame completionHandler:(void (^)(NSString * _Nullable result))completionHandler
{
    [CJToast shortShowMessage:defaultText];
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end