//
//  DetailThemeController.h
//  foody
//
//  Created by Tope on 25/10/2011.
//  Copyright (c) 2011 AppDesignVault. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Recipe.h"

@interface DetailThemeController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (nonatomic, strong) IBOutlet UIImageView* dishImage;
@property (nonatomic, strong) IBOutlet UITextView* ingredientsTextView;
@property (strong, nonatomic) IBOutlet UITableView *tableSteps;
@property (strong, nonatomic) UIButton *btnAction;

@property (nonatomic, strong) Recipe* recipe;

@end
