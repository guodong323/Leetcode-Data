//
//  AppDelegate.m
//  Leetcode
//
//  Created by 阿栋 on 2023/1/9.
//

#import "AppDelegate.h"
#import "BaseViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    BaseViewController *viewController = [[BaseViewController alloc] init];
    viewController.view.backgroundColor = [UIColor yellowColor];
    viewController.tabBarItem.title = @"图库";
//        viewController.tabBarItem.image = [UIImage imageNamed:@"ic_gallery_nav_gray"];
    UIViewController *controller2 = [[UIViewController alloc] init];
    controller2.view.backgroundColor = [UIColor greenColor];
    controller2.tabBarItem.title = @"壁纸";
//        controller2.tabBarItem.image = [UIImage imageNamed:@"ic_bing_nav_gray"];

    [tabBarController setViewControllers: @[viewController, controller2]];
    
    // 设置最外层VC
    UINavigationController *rootViewController = [[UINavigationController alloc] initWithRootViewController:tabBarController];
    self.window.rootViewController = rootViewController;
    [self.window makeKeyAndVisible];

    return YES;
}


#pragma mark - UISceneSession lifecycle



@end
