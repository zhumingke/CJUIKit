//
//  CallSystemViewController.m
//  CJFoundationDemo
//
//  Created by ciyouzen on 2016/3/26.
//  Copyright © 2016年 dvlproad. All rights reserved.
//

#import "CallSystemViewController.h"

//其他Util
#import "CJCallUtil.h"

@interface CallSystemViewController () <UITableViewDataSource, UITableViewDelegate> {
    
}

@end

@implementation CallSystemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = NSLocalizedString(@"调用系统服务", nil); //知识点:使得tabBar中的title可以和显示在顶部的title保持各自
    self.view.backgroundColor = [UIColor whiteColor];
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    tableView.dataSource = self;
    tableView.delegate = self;
    [self.view addSubview:tableView];
    [tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self.view);
    }];
    self.tableView = tableView;
}

#pragma mark - UITableViewDataSource & UITableViewDelegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    if (indexPath.row == 0) {
        cell.textLabel.text = @"CJCallUtil";
    } else if (indexPath.row == 1) {
        cell.textLabel.text = @"测试是否会有多个拨打电话视图弹出";
    } else if (indexPath.row == 2) {
        cell.textLabel.text = @"移除拨打电话视图弹出";
    } else {
        cell.textLabel.text = @"None";
    }
    
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if (indexPath.row == 0) {
        [CJCallUtil showCallViewWithPhone:@"18012345678" atView:self.view];
        
    } else if (indexPath.row == 1) {
        [CJCallUtil showCallViewWithPhone:@"18000000001" atView:self.view];
        [CJCallUtil showCallViewWithPhone:@"18000000002" atView:self.view];
        [CJCallUtil showCallViewWithPhone:@"18000000003" atView:self.view];
        [CJCallUtil showCallViewWithPhone:@"18000000004" atView:self.view];
    } else if (indexPath.row == 2) {
        [CJCallUtil hideCallView];
    }
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
