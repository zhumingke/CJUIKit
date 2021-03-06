//
//  FoundationHomeViewController.m
//  CJFoundationDemo
//
//  Created by ciyouzen on 2016/3/26.
//  Copyright © 2016年 dvlproad. All rights reserved.
//

#import "FoundationHomeViewController.h"

#import "EncryptStringViewController.h"
#import "AttributedStringViewController.h"
#import "ValidateStringViewController.h"

#import "DateViewController.h"
#import "TypeConvertViewController.h"


@interface FoundationHomeViewController ()

@end

@implementation FoundationHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = NSLocalizedString(@"Home首页", nil);
    
    NSMutableArray *sectionDataModels = [[NSMutableArray alloc] init];
    //NSString
    {
        CJSectionDataModel *sectionDataModel = [[CJSectionDataModel alloc] init];
        sectionDataModel.theme = @"NSString相关";
        {
            CJModuleModel *NSStringModule = [[CJModuleModel alloc] init];
            NSStringModule.title = @"EncryptString";
            NSStringModule.classEntry = [EncryptStringViewController class];
            [sectionDataModel.values addObject:NSStringModule];
        }
        {
            CJModuleModel *NSAttributedStringModule = [[CJModuleModel alloc] init];
            NSAttributedStringModule.title = @"NSAttributedString";
            NSAttributedStringModule.classEntry = [AttributedStringViewController class];
            [sectionDataModel.values addObject:NSAttributedStringModule];
        }
        {
            CJModuleModel *NSAttributedStringModule = [[CJModuleModel alloc] init];
            NSAttributedStringModule.title = @"ValidateString";
            NSAttributedStringModule.classEntry = [ValidateStringViewController class];
            [sectionDataModel.values addObject:NSAttributedStringModule];
        }
        
        [sectionDataModels addObject:sectionDataModel];
    }
    
    
    //NSDate
    {
        CJSectionDataModel *sectionDataModel = [[CJSectionDataModel alloc] init];
        sectionDataModel.theme = @"NSDate相关";
        {
            CJModuleModel *NSDateModule = [[CJModuleModel alloc] init];
            NSDateModule.title = @"NSDate";
            NSDateModule.classEntry = [DateViewController class];
            [sectionDataModel.values addObject:NSDateModule];
        }
        
        [sectionDataModels addObject:sectionDataModel];
    }
    
    //Json-Model类型转换
    {
        CJSectionDataModel *sectionDataModel = [[CJSectionDataModel alloc] init];
        sectionDataModel.theme = @"Json-Model类型转换相关";
        {
            //TypeConvert
            CJModuleModel *TypeConvertModule = [[CJModuleModel alloc] init];
            TypeConvertModule.title = @"TypeConvertModule（类型转换）";
            TypeConvertModule.classEntry = [TypeConvertViewController class];
            [sectionDataModel.values addObject:TypeConvertModule];
        }
        
        [sectionDataModels addObject:sectionDataModel];
    }
    
    self.sectionDataModels = sectionDataModels;
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
