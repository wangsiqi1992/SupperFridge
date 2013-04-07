//
//  AppDelegate.h
//  foody
//
//  Created by Tope on 28/12/2011.
//  Copyright (c) 2011 AppDesignVault. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

- (void)customizeGlobalTheme;
- (void)customizeiPadTheme;
- (void)iPadInit;
- (void)iPhoneInit;

@end
