//
//  AppDelegate.h
//  SensibleFoody
//
//  Created by Tope on 30/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ListThemeController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ListThemeController *viewController;

- (void)customizeGlobalTheme;

-(void)setTabItemOnController:(UIViewController*)controller withImageName:(NSString*)imageName andTitle:(NSString*)title;

@end
