//
//  ViewController.m
//  foody
//
//  Created by Tope on 25/10/2011.
//  Copyright (c) 2011 AppDesignVault. All rights reserved.
//

#import "StepListController.h"
#import "StepListCell.h"
#import "DetailThemeController.h"
#import "Recipe.h"
#import "FoodItem.h"
#import "DataLoader.h"

@implementation StepListController

@synthesize stepsTableView, foodsList;


#pragma mark - View lifecycle

- (void)viewDidLoad {

    [stepsTableView setDelegate:self];
    [stepsTableView setDataSource:self];
    [stepsTableView setBackgroundColor:[UIColor clearColor]];
    [stepsTableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    [self.view addSubview:stepsTableView];
    
    UIColor *color = [UIColor colorWithPatternImage:[UIImage tallImageNamed:@"leather-background.png"]];
    
    [self.view setBackgroundColor:color];
    
    self.title = @"Scan";
    
    [super viewDidLoad];
}


-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    if (picked) {
//        [self.view bringSubviewToFront:self.fakeAI.viewForBaselineLayout];
        [self.fakeAI startAnimating];
        [NSTimer scheduledTimerWithTimeInterval:1.5 target:self selector:@selector(timesUp) userInfo:nil repeats:NO];
    }
    else
    {
        self.foodsList = nil;
        [stepsTableView reloadData];
        [self showPicker];
        
    }
}

-(void)timesUp
{
    [self.fakeAI stopAnimating];
    NSArray* foods = [DataLoader loadFoodList];
    self.foodsList = foods;
    [stepsTableView reloadData];
}

- (void)viewDidUnload {
    [self setFakeAI:nil];
    [super viewDidUnload];
    self.stepsTableView = nil;
    self.foodsList = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark - Table View datasource


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [foodsList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *CellIdentifier = @"StepListCell";    
    StepListCell *cell = (StepListCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    
    FoodItem* food = foodsList[indexPath.row];
    NSString *exDate = food.expiryDate;
    NSString *foodName = food.name;
    CGSize stepSize = [exDate sizeWithFont:[UIFont systemFontOfSize:14.0f] constrainedToSize:CGSizeMake(220, 1000)];
    
    [cell.stepLabel setText:exDate];
    [cell.stepLabel setNumberOfLines:0];
    CGRect stepFrame = cell.stepLabel.frame;
    stepFrame.size.height = stepSize.height;
    cell.stepLabel.frame = stepFrame;
    [cell.countLabel setText:foodName];
    [cell.bulletLabel setText:food.quantity];
    cell.foodImage.image = food.image;
    
    return cell;
    
}

#pragma mark - Table View delegate

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    FoodItem *food = [self.foodsList objectAtIndex:indexPath.row];
    NSString *foodName = food.name;
    CGSize stepSize = [foodName sizeWithFont:[UIFont systemFontOfSize:14.0f] constrainedToSize:CGSizeMake(220, 1000)];
    
    return 80 + stepSize.height;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
   
}


#pragma mark - UIImagePicker
-(void)showPicker
{
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    
    if([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
    {
        [imagePicker setSourceType:UIImagePickerControllerSourceTypeCamera];
    }
    else
    {
        [imagePicker setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    }
    
    [imagePicker setDelegate:self];
    
    [self presentModalViewController:imagePicker animated:YES];
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    picked = true;
    [self dismissModalViewControllerAnimated:YES];
}

-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [self dismissModalViewControllerAnimated:YES];
    picked = true;
    
}


- (IBAction)doneButtonPressed:(id)sender
{
    picked = false;
    self.foodsList = nil;
    [stepsTableView reloadData];
    //change tab to Fridge!
    UITabBarController *tc = self.tabBarController;
    [tc setSelectedIndex:0];
}


- (IBAction)scanAgain:(id)sender
{
    picked = false;
    [self viewDidAppear:YES];
}












































@end
