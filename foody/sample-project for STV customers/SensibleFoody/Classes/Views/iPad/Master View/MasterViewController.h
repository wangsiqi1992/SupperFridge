//
//  MasterViewController.h
//  foody
//
//  Created by Tope on 09/01/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Recipe.h"
#import "SensibleTableView/SensibleTableView.h"


@interface MasterViewController : SCTableViewController

@property (nonatomic, strong) UITableView* dishTableView;

@property (nonatomic, strong) NSMutableArray* recipes;


@end
