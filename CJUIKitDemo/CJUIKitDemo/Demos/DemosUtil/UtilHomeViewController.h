//
//  UtilHomeViewController.h
//  CJFoundationDemo
//
//  Created by ciyouzen on 2016/3/26.
//  Copyright © 2016年 dvlproad. All rights reserved.
//

#import <UIKit/UIKit.h>
#ifdef CJTESTPOD
#import "CJSectionDataModel.h"
#else
#import <CJBaseUtil/CJSectionDataModel.h> //在CJDataUtil中
#endif

@interface UtilHomeViewController : UIViewController {
    
}
@property (nonatomic, weak) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSMutableArray<CJSectionDataModel *> *sectionDataModels;

@end