//
//  UIViewController+JLRHelp.m
//  JLRoutes
//
//  Created by 祭遵 on 04/04/2018.
//  Copyright © 2018 Afterwork Studios. All rights reserved.
//

#import "UIViewController+JLRHelp.h"

@implementation UIViewController (JLRHelp)

+ (UIViewController * __nullable)jlr_topmostViewController
{
    UIViewController *topViewController = [[[UIApplication sharedApplication] keyWindow] rootViewController];

    if (topViewController == nil) {
        return nil;
    }

    while (true) {
        if (topViewController.presentedViewController != nil) {
            topViewController = topViewController.presentedViewController;
        } else if ([topViewController isKindOfClass:[UINavigationController class]]) {
            UINavigationController *navi = (UINavigationController *)topViewController;
            topViewController = navi.topViewController;
        } else if ([topViewController isKindOfClass:[UITabBarController class]]) {
            UITabBarController *tab = (UITabBarController *)topViewController;
            topViewController = tab.selectedViewController;
        } else {
            break;
        }
    }

    return topViewController;
}

+ (UINavigationController * __nullable)jlr_currentNavigationController
{
    return [[UIViewController jlr_topmostViewController] navigationController];
}


@end
