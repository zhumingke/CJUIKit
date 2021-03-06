//
//  BChildViewController.m
//  CJRadioDemo
//
//  Created by ciyouzen on 2018/10/10.
//  Copyright © 2018年 dvlproad. All rights reserved.
//

#import "BChildViewController.h"

@interface BChildViewController ()

@end

@implementation BChildViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"%@ viewWillAppear", NSStringFromClass([self class]));
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    NSLog(@"%@ viewWillDisappear", NSStringFromClass([self class]));
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"Home2", nil);
    self.view.backgroundColor = [UIColor yellowColor];
    
    UILabel *label = [DemoLabelFactory cyanLabelWithText:NSLocalizedString(@"BChildViewController", nil)];
    [self.view addSubview:label];
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.view).mas_offset(10);
        make.centerX.mas_equalTo(self.view);
        make.left.mas_equalTo(self.view).mas_offset(10);
        make.height.mas_equalTo(300);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
