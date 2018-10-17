//
//  HomeViewController.m
//  CJUIKitDemo
//
//  Created by ciyouzen on 2017/2/25.
//  Copyright © 2017年 dvlproad. All rights reserved.
//

#import "HomeViewController.h"

#import "NestedXibViewController.h"
#import "BeChangeViewController.h"

//image
#import "ColorViewController.h"

//UIView
#import "ViewHomeViewController.h"

#import "ButtonViewController.h"
#import "TextFieldViewController.h"
#import "TextViewController.h"
#import "SliderHomeViewController.h"
#import "SearchBarViewController.h"

//UIWindow
#import "FloatingWindowViewController.h"
#import "SuspendWindowViewController.h"

#import "NavigationBarHomeViewController.h"
#import "ImageChangeColorViewController.h"
#import "ImageRotateViewController.h"

//UIViewController
#import "SampleViewController.h"
#import "SystemComposeViewController.h"

#import "CJMJRefreshViewController.h"
#import "KeyboardAvoidingViewController.h"

//ChangeEnvironment
#import "ChangeEnvironmentViewController.h"
#import "LoginChangeEnvironmentViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = NSLocalizedString(@"CJBaseUIKit首页", nil); //知识点:使得tabBar中的title可以和显示在顶部的title保持各自
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    
    NSMutableArray *sectionDataModels = [[NSMutableArray alloc] init];
    
    //Interface
    {
        CJSectionDataModel *sectionDataModel = [[CJSectionDataModel alloc] init];
        sectionDataModel.theme = @"Interface相关(xib/storyboard)";
        {
            CJModuleModel *xibModule = [[CJModuleModel alloc] init];
            xibModule.title = @"xib";
            xibModule.classEntry = [NestedXibViewController class];
            xibModule.isCreateByXib = YES;
            
            [sectionDataModel.values addObject:xibModule];
        }
        {
            CJModuleModel *xibModule = [[CJModuleModel alloc] init];
            xibModule.title = @"后视图改变前视图的值的实现事例";
            xibModule.classEntry = [BeChangeViewController class];
            xibModule.isCreateByXib = NO;
            
            [sectionDataModel.values addObject:xibModule];
        }
        
        [sectionDataModels addObject:sectionDataModel];
    }
    
    //UIImage
    {
        CJSectionDataModel *sectionDataModel = [[CJSectionDataModel alloc] init];
        sectionDataModel.theme = @"UIImage相关";
        {
            CJModuleModel *imageChangeColorModule = [[CJModuleModel alloc] init];
            imageChangeColorModule.title = @"UIImage(改变颜色)";
            imageChangeColorModule.classEntry = [ImageChangeColorViewController class];
            imageChangeColorModule.isCreateByXib = NO;
            [sectionDataModel.values addObject:imageChangeColorModule];
        }
        {
            CJModuleModel *imageRotateModule = [[CJModuleModel alloc] init];
            imageRotateModule.title = @"UIImage(旋转任意角度)";
            imageRotateModule.classEntry = [ImageRotateViewController class];
            imageRotateModule.isCreateByXib = NO;
            [sectionDataModel.values addObject:imageRotateModule];
        }
        
        [sectionDataModels addObject:sectionDataModel];
    }
    
    
    //UIWindow
    {
        CJSectionDataModel *sectionDataModel = [[CJSectionDataModel alloc] init];
        sectionDataModel.theme = @"UIWindow";
        {
            CJModuleModel *floatingWindowModule = [[CJModuleModel alloc] init];
            floatingWindowModule.title = @"FloatingWindow（悬浮视图）";
            floatingWindowModule.classEntry = [FloatingWindowViewController class];
            floatingWindowModule.isCreateByXib = NO;
            [sectionDataModel.values addObject:floatingWindowModule];
        }
        
        {
            CJModuleModel *floatingWindowModule = [[CJModuleModel alloc] init];
            floatingWindowModule.title = @"SuspendWindow（悬浮球）";
            floatingWindowModule.classEntry = [SuspendWindowViewController class];
            floatingWindowModule.isCreateByXib = NO;
            [sectionDataModel.values addObject:floatingWindowModule];
        }
        
        
        [sectionDataModels addObject:sectionDataModel];
    }
    
    //UIView
    {
        CJSectionDataModel *sectionDataModel = [[CJSectionDataModel alloc] init];
        sectionDataModel.theme = @"UIView相关";
        {
            CJModuleModel *dragViewModule = [[CJModuleModel alloc] init];
            dragViewModule.title = @"UIView首页(Drag+Popup+Animate)";
            dragViewModule.content = @"(Drag+Popup+Animate)";
            dragViewModule.classEntry = [ViewHomeViewController class];
            dragViewModule.isCreateByXib = NO;
            [sectionDataModel.values addObject:dragViewModule];
        }
        [sectionDataModels addObject:sectionDataModel];
    }
    
    //UINavigationBar
    {
        CJSectionDataModel *sectionDataModel = [[CJSectionDataModel alloc] init];
        sectionDataModel.theme = @"UINavigationBar相关";
        {
            CJModuleModel *navigationBarModule = [[CJModuleModel alloc] init];
            navigationBarModule.title = @"UINavigationBar(导航栏的设置)";
            navigationBarModule.classEntry = [NavigationBarHomeViewController class];
            navigationBarModule.isCreateByXib = NO;
            [sectionDataModel.values addObject:navigationBarModule];
        }
        
        [sectionDataModels addObject:sectionDataModel];
    }
    
    
    {
        CJSectionDataModel *sectionDataModel = [[CJSectionDataModel alloc] init];
        sectionDataModel.theme = @"UIView的子类相关";
        {
            //UIButton
            CJModuleModel *buttonModule = [[CJModuleModel alloc] init];
            buttonModule.title = @"UIButton";
            buttonModule.classEntry = [ButtonViewController class];
            buttonModule.isCreateByXib = NO;
            [sectionDataModel.values addObject:buttonModule];
        }
        {
            //TextField
            CJModuleModel *textFieldModule = [[CJModuleModel alloc] init];
            textFieldModule.title = @"TextField";
            textFieldModule.classEntry = [TextFieldViewController class];
            textFieldModule.isCreateByXib = NO;
            [sectionDataModel.values addObject:textFieldModule];
        }
        {
            //TextView
            CJModuleModel *textViewModule = [[CJModuleModel alloc] init];
            textViewModule.title = @"TextView";
            textViewModule.classEntry = [TextViewController class];
            textViewModule.isCreateByXib = NO;
            [sectionDataModel.values addObject:textViewModule];
        }
        {
            //CJBadgeButton
            CJModuleModel *badgeButtonModule = [[CJModuleModel alloc] init];
            badgeButtonModule.title = @"CJBadgeButton";
            badgeButtonModule.classEntry = [ColorViewController class];
            badgeButtonModule.isCreateByXib = NO;
            [sectionDataModel.values addObject:badgeButtonModule];
        }
        {
            //CJSearchBar
            CJModuleModel *cjSearchBarModuleModel = [[CJModuleModel alloc] init];
            cjSearchBarModuleModel.title = @"CJSearchBar";
            cjSearchBarModuleModel.classEntry = [SearchBarViewController class];
            cjSearchBarModuleModel.isCreateByXib = NO;
            [sectionDataModel.values addObject:cjSearchBarModuleModel];
        }
        
        {
            //UISlider
            CJModuleModel *cjSearchBarModuleModel = [[CJModuleModel alloc] init];
            cjSearchBarModuleModel.title = @"UISlider";
            cjSearchBarModuleModel.classEntry = [SliderHomeViewController class];
            cjSearchBarModuleModel.isCreateByXib = NO;
            [sectionDataModel.values addObject:cjSearchBarModuleModel];
        }
        
        
        [sectionDataModels addObject:sectionDataModel];
    }
    
    //UIViewController
    {
        CJSectionDataModel *sectionDataModel = [[CJSectionDataModel alloc] init];
        sectionDataModel.theme = @"UIViewController相关";
        {
            CJModuleModel *ViewCategoryModule = [[CJModuleModel alloc] init];
            ViewCategoryModule.title = @"BackBarButtonItem (返回按钮事件)";
            ViewCategoryModule.classEntry = [SampleViewController class];
            ViewCategoryModule.isCreateByXib = NO;
            [sectionDataModel.values addObject:ViewCategoryModule];
        }
        {
            CJModuleModel *systemComposeViewModule = [[CJModuleModel alloc] init];
            systemComposeViewModule.title = @"SystemComposeViewController";
            systemComposeViewModule.classEntry = [SystemComposeViewController class];
            systemComposeViewModule.isCreateByXib = NO;
            [sectionDataModel.values addObject:systemComposeViewModule];
        }
        [sectionDataModels addObject:sectionDataModel];
    }
    
    //ChangeEnvironment
    {
        CJSectionDataModel *sectionDataModel = [[CJSectionDataModel alloc] init];
        sectionDataModel.theme = @"ChangeEnvironment相关";
        {
            CJModuleModel *xibModule = [[CJModuleModel alloc] init];
            xibModule.title = @"ChangeEnvironment(改变网络环境)";
            xibModule.classEntry = [ChangeEnvironmentViewController class];
            xibModule.isCreateByXib = NO;
            [sectionDataModel.values addObject:xibModule];
        }
        
        {
            CJModuleModel *xibModule = [[CJModuleModel alloc] init];
            xibModule.title = @"ChangeEnvironment(在登录的时候改变网络环境)";
            xibModule.classEntry = [LoginChangeEnvironmentViewController class];
            xibModule.isCreateByXib = NO;
            [sectionDataModel.values addObject:xibModule];
        }
        
        [sectionDataModels addObject:sectionDataModel];
    }
    
    {
        CJSectionDataModel *sectionDataModel = [[CJSectionDataModel alloc] init];
        sectionDataModel.theme = @"其他";
        {
            CJModuleModel *keyboardAvoidingModuleModel = [[CJModuleModel alloc] init];
            keyboardAvoidingModuleModel.title = @"KeyboardAvoiding";
            keyboardAvoidingModuleModel.classEntry = [KeyboardAvoidingViewController class];
            keyboardAvoidingModuleModel.isCreateByXib = NO;
            [sectionDataModel.values addObject:keyboardAvoidingModuleModel];
        }
        {
            CJModuleModel *cjMJRefreshComponentModuleModel = [[CJModuleModel alloc] init];
            cjMJRefreshComponentModuleModel.title = @"CJMJRefreshComponent";
            cjMJRefreshComponentModuleModel.classEntry = [CJMJRefreshViewController class];
            cjMJRefreshComponentModuleModel.isCreateByXib = NO;
            [sectionDataModel.values addObject:cjMJRefreshComponentModuleModel];
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
