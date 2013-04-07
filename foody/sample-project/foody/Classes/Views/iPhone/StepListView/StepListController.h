//
//  StepListController.h
//  foody
//
//  Created by Tope on 29/12/2011.
//  Copyright (c) 2011 AppDesignVault. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StepListController : UIViewController <UITableViewDataSource, UITableViewDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate>
{
    BOOL picked;
    
}


@property (nonatomic, retain) IBOutlet UITableView* stepsTableView;

@property (nonatomic, retain) NSArray* foodsList;
- (IBAction)doneButtonPressed:(id)sender;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *fakeAI;
- (IBAction)scanAgain:(id)sender;

@end
