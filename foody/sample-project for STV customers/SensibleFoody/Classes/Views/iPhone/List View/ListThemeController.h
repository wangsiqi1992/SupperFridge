//
//  ViewController.h
//  foody
//
//  Created by Tope on 25/10/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SensibleTableView/SensibleTableView.h"
#import "Recipe.h"
#import "DataLoader.h"

@interface ListThemeController : SCTableViewController

@property (nonatomic, strong) UITableView* dishTableView;

@property (nonatomic, strong) NSMutableArray* recipes;

@end
