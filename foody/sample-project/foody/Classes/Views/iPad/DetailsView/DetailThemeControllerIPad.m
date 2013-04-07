//
//  DetailThemeControllerIPad.m
//  foody
//
//  Created by Tope on 09/01/2012.
//  Copyright (c) 2012 AppDesignVault. All rights reserved.
//

#import "DetailThemeControllerIPad.h"
#import "IngredientsTableViewController.h"
#import "StepsTableViewController.h"

@implementation DetailThemeControllerIPad
{
    UIPopoverController *masterPopoverController;
    
    IngredientsTableViewController *ingredientsTableViewController;
    StepsTableViewController *stepsTableViewController;
    
}

@synthesize toolbar, toolbarBottom, ingredientsTableView, stepsTableView, dishImage, paperBackground, viewsContainer;

-(void)viewDidLoad
{
    UIImage* toolBarBg = [UIImage imageNamed:@"ipad-menubar-right.png"];
    
    [toolbar setBackgroundImage:toolBarBg forToolbarPosition:UIToolbarPositionTop barMetrics:UIBarMetricsDefault];
    
    
    UIImage* bottomToolBarBg = [UIImage imageNamed:@"ipad-tabbar-right.png"];
    
    [toolbarBottom setBackgroundImage:bottomToolBarBg forToolbarPosition:UIToolbarPositionBottom barMetrics:UIBarMetricsDefault];
    
    ingredientsTableViewController = [[IngredientsTableViewController alloc] initWithStyle:UITableViewStylePlain];
    
    ingredientsTableView.delegate = ingredientsTableViewController;
    ingredientsTableView.dataSource = ingredientsTableViewController;
    
    ingredientsTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    ingredientsTableView.backgroundColor = [UIColor clearColor];
    
    stepsTableViewController = [[StepsTableViewController alloc] initWithStyle:UITableViewStylePlain];
    
    stepsTableView.delegate = stepsTableViewController;
    stepsTableView.dataSource = stepsTableViewController;
    
    UIColor *color = [UIColor colorWithPatternImage:[UIImage tallImageNamed:@"leather-background.png"]];
    
    [self.view setBackgroundColor:color];
    

    [viewsContainer setHidden:YES];

    [super viewDidLoad];
}

-(void)loadRecipeIntoView:(Recipe *)recipe
{
    [viewsContainer setHidden:NO];
 
    [dishImage setImage:recipe.image];
    
    [ingredientsTableViewController setIngredients:recipe.ingredients];
    [ingredientsTableView reloadData];
    
    [stepsTableViewController setSteps:recipe.preparationSteps];
    [stepsTableView reloadData];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    self.toolbar = nil; 
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES; 
}



- (void)splitViewController: (UISplitViewController *)splitViewController 
     willHideViewController:(UIViewController *)viewController 
          withBarButtonItem:(UIBarButtonItem *)barButtonItem
       forPopoverController: (UIPopoverController *)popoverController
{
    barButtonItem.title = @"Master";
    NSMutableArray *items = [[self.toolbar items] mutableCopy]; 
    [items insertObject:barButtonItem atIndex:0];
    [self.toolbar setItems:items animated:YES]; 
    masterPopoverController = popoverController;
}


- (void)splitViewController:(UISplitViewController *)splitController 
     willShowViewController:(UIViewController *)viewController
  invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem
{
    NSMutableArray *items = [[self.toolbar items] mutableCopy]; 
    [items removeObject:barButtonItem];
    [self.toolbar setItems:items animated:YES]; 
    masterPopoverController = nil;
}



@end