//
//  AppDelegate.m
//  Leetcode
//
//  Created by 阿栋 on 2023/1/9.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
        ViewController *viewController = [[ViewController alloc] init];
        viewController.view.backgroundColor = [UIColor yellowColor];
        viewController.tabBarItem.title = @"图库";
        viewController.tabBarItem.image = [UIImage imageNamed:@"ic_gallery_nav_gray"];
        UIViewController *controller2 = [[UIViewController alloc] init];
        controller2.view.backgroundColor = [UIColor greenColor];
        controller2.tabBarItem.title = @"壁纸";
        controller2.tabBarItem.image = [UIImage imageNamed:@"ic_bing_nav_gray"];
        UIViewController *controller3 = [[UIViewController alloc] init];
        controller3.view.backgroundColor = [UIColor cyanColor];
        controller3.tabBarItem.title = @"更多";
        controller3.tabBarItem.image = [UIImage imageNamed:@"ic_more_nav_gray"];
        [tabBarController setViewControllers: @[viewController, controller2, controller3]];
        
        // 设置最外层VC
            UINavigationController *rootViewController = [[UINavigationController alloc] initWithRootViewController:tabBarController];
        self.window.rootViewController = rootViewController;
        [self.window makeKeyAndVisible];
//    //设置根控制器
//    ViewController *vc = [ViewController new];
//    self.window.rootViewController = vc;
//    [self.window makeKeyAndVisible];
    return YES;
}


#pragma mark - UISceneSession lifecycle


//- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
//    // Called when a new scene session is being created.
//    // Use this method to select a configuration to create the new scene with.
//    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
//}
//
//
//- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
//    // Called when the user discards a scene session.
//    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
//    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
//}


@end
