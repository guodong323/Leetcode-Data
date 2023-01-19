//
//  AppDelegate.m
//  Leetcode
//
//  Created by 阿栋 on 2023/1/9.
//

#import "AppDelegate.h"
#import "BaseViewController.h"
#import "TableViewController.h"
#import "CYTabBarController.h"
#import "TableViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    CYTabBarController * tabBarController = [[CYTabBarController alloc]init];
    tabBarController.tabBar.backgroundColor = [UIColor whiteColor];
    BaseViewController *viewController = [[BaseViewController alloc] init];
    viewController.view.backgroundColor = [UIColor yellowColor];
    viewController.tabBarItem.title = @"数据";
    viewController.tabBarItem.image = [UIImage imageNamed:@"Btn01"];
    TableViewController *controller2 = [[TableViewController alloc] init];
//    controller2.view.backgroundColor = [UIColor greenColor];
    controller2.tabBarItem.title = @"记录";
    controller2.tabBarItem.image = [UIImage imageNamed:@"Btn02"];

    [tabBarController setViewControllers: @[viewController, controller2]];
    
    // 设置最外层VC
    UINavigationController *rootViewController = [[UINavigationController alloc] initWithRootViewController:tabBarController];
    self.window.rootViewController = rootViewController;
    [self.window makeKeyAndVisible];

    return YES;
}


#pragma mark - UISceneSession lifecycle



@end
