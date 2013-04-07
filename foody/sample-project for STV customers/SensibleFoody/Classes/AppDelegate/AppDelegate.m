//
//  AppDelegate.m
//  SensibleFoody
//
//  Created by Tope on 30/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"

#import "ListThemeController.h"
#import "StepListController.h"
#import "ElementThemeController.h"
#import "MasterViewController.h"
#import "DetailThemeControllerIPad.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize viewController = _viewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [self customizeGlobalTheme];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        
        self.viewController = [[ListThemeController alloc] initWithStyle:UITableViewStyleGrouped];
        
        UINavigationController* nav = [[UINavigationController alloc] initWithRootViewController:self.viewController];
        [self setTabItemOnController:nav withImageName:@"icon1.png" andTitle:@"Dishes"];
        
        StepListController* stepsController = [[StepListController alloc] initWithStyle:UITableViewStyleGrouped];
        UINavigationController* stepNav = [[UINavigationController alloc] initWithRootViewController:stepsController];
        [self setTabItemOnController:stepNav withImageName:@"icon2.png" andTitle:@"Steps"];
        
        ElementThemeController* elementsController = [[ElementThemeController alloc] initWithNibName:@"ElementThemeController" bundle:nil];
        [self setTabItemOnController:elementsController withImageName:@"icon3.png" andTitle:@"Other"];
        
        UIViewController *controller4 = [[UIViewController alloc] init];
        [self setTabItemOnController:controller4 withImageName:@"icon1.png" andTitle:@"Other"];
        
        UITabBarController *tabController = [[UITabBarController alloc] init];
        
        [tabController setViewControllers:[NSArray arrayWithObjects:nav, stepNav, elementsController, controller4,  nil]];
        
        self.window.rootViewController = tabController;
        
    } else {
        
        MasterViewController *masterView = [[MasterViewController alloc] initWithStyle:UITableViewStyleGrouped];
        UINavigationController *masterNav = [[UINavigationController alloc] initWithRootViewController:masterView];
        DetailThemeControllerIPad *detailView = [[DetailThemeControllerIPad alloc] initWithStyle:UITableViewStyleGrouped];
        masterView.tableViewModel.detailViewController = detailView;
        UINavigationController *detailNav = [[UINavigationController alloc] initWithRootViewController:detailView];
        
        UISplitViewController *splitView = [[UISplitViewController alloc] init];
        splitView.viewControllers = [NSArray arrayWithObjects:masterNav, detailNav, nil];
        
        self.window.rootViewController = splitView;
    }

    [self.window makeKeyAndVisible];
    return YES;
}

- (void)customizeGlobalTheme
{
    UIImage *barButton = [[UIImage imageNamed:@"navbar-icon.png"]resizableImageWithCapInsets:UIEdgeInsetsMake(0, 4, 0, 4)];
    
    [[UIBarButtonItem appearance] setBackgroundImage:barButton forState:UIControlStateNormal 
                                          barMetrics:UIBarMetricsDefault];
    
    UIImage *backButton = [[UIImage imageNamed:@"back-button.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 14, 0, 4)];
    
    [[UIBarButtonItem appearance] setBackButtonBackgroundImage:backButton forState:UIControlStateNormal 
                                                    barMetrics:UIBarMetricsDefault];
    
    UIImage* tabBarBackground = [UIImage imageNamed:@"tabbar.png"];
    [[UITabBar appearance] setBackgroundImage:tabBarBackground];
    
    
    UIImage *minImage = [[UIImage imageNamed:@"slider-track-fill.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 10, 0, 10)];
    UIImage *maxImage = [UIImage imageNamed:@"slider-track.png"];
    UIImage *thumbImage = [UIImage imageNamed:@"slider-cap.png"];
    
    [[UISlider appearance] setMaximumTrackImage:maxImage 
                                       forState:UIControlStateNormal];
    [[UISlider appearance] setMinimumTrackImage:minImage 
                                       forState:UIControlStateNormal];
    [[UISlider appearance] setThumbImage:thumbImage 
                                forState:UIControlStateNormal];
    [[UISlider appearance] setThumbImage:thumbImage
                                forState:UIControlStateHighlighted];
    
    
    [[UITabBar appearance] setSelectionIndicatorImage:[UIImage imageNamed:@"tabbar-item.png"]];
    
}

-(void)setTabItemOnController:(UIViewController*)controller withImageName:(NSString*)imageName andTitle:(NSString*)title
{
    UIImage* icon1 = [UIImage imageNamed:imageName];
    UITabBarItem *item1 = [[UITabBarItem alloc] initWithTitle:title image:icon1 tag:0];
    [item1 setFinishedSelectedImage:icon1 withFinishedUnselectedImage:icon1];
    
    [controller setTabBarItem:item1];
}


- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
