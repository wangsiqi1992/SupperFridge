//
//  DetailThemeControllerIPad.h
//  foody
//
//  Created by Tope on 09/01/2012.
//  Copyright (c) 2012 AppDesignVault. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Recipe.h"
#import "MasterViewController.h"


@interface DetailThemeControllerIPad : UIViewController <UIPopoverControllerDelegate, MasterViewControllerDelegate>

@property (nonatomic, weak) IBOutlet UIToolbar *toolbar;

@property (nonatomic, weak) IBOutlet UIToolbar *toolbarBottom;

@property (nonatomic, weak) IBOutlet UITableView *ingredientsTableView;

@property (nonatomic, weak) IBOutlet UITableView *stepsTableView;

@property (nonatomic, weak) IBOutlet UIImageView* dishImage;

@property (nonatomic, weak) IBOutlet UIImageView* paperBackground;

@property (nonatomic, weak) IBOutlet UIView* viewsContainer;

-(void)loadRecipeIntoView:(Recipe *)recipe;

@end


