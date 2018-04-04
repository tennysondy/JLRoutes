//
//  UIViewController+JLRHelp.h
//  JLRoutes
//
//  Created by 祭遵 on 04/04/2018.
//  Copyright © 2018 Afterwork Studios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (JLRHelp)

+ (UIViewController * __nullable)jlr_topmostViewController;
+ (UINavigationController * __nullable)jlr_currentNavigationController;

@end
