//
//  MasterViewController.h
//  foody
//
//  Created by Tope on 09/01/2012.
//  Copyright (c) 2012 AppDesignVault. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Recipe.h"

@protocol MasterViewControllerDelegate;

@interface MasterViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, weak) IBOutlet UITableView* dishTableView;

@property (nonatomic, weak) IBOutlet UIToolbar* toolbarBottom;

@property (nonatomic, strong) NSArray* recipes;

@property (nonatomic, assign) id<MasterViewControllerDelegate> delegate;

@end


@protocol MasterViewControllerDelegate <NSObject>

-(void)loadRecipeIntoView:(Recipe*)recipe;

@end