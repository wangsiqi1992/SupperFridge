//
//  StepListController.h
//  foody
//
//  Created by Tope on 29/12/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SensibleTableView/SensibleTableView.h"

@interface StepListController : SCTableViewController


@property (nonatomic, strong) IBOutlet UITableView* stepsTableView;

@property (nonatomic, strong) NSMutableArray* steps;

@property (nonatomic, strong) SCTableViewModel * tableViewModel;

@end
