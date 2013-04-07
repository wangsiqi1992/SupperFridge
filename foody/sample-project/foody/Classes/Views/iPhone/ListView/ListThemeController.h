//
//  ViewController.h
//  foody
//
//  Created by Tope on 25/10/2011.
//  Copyright (c) 2011 AppDesignVault. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListThemeController : UIViewController <UITableViewDataSource, UITableViewDelegate>


@property (nonatomic, retain) IBOutlet UITableView* dishTableView;


@property (nonatomic, retain) IBOutlet NSArray* recipes;

@end
