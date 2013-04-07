//
//  MasterViewController.m
//  foody
//
//  Created by Tope on 09/01/2012.
//  Copyright (c) 2012 AppDesignVault. All rights reserved.
//

#import "MasterViewController.h"
#import "MasterCell.h"
#import "IngredientsTableViewController.h"
#import "DataLoader.h"


@implementation MasterViewController

@synthesize dishTableView, recipes, delegate, toolbarBottom;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{ 

    recipes = [DataLoader loadSampleRecipes];
    
    //UIImage* toolbarBg= [UIImage imageNamed:@"ipad-menubar-left"];
    //[toolbar setBackgroundImage:toolbarBg forToolbarPosition:UIToolbarPositionAny barMetrics:UIBarMetricsDefault];
    
    UIImage* toolbarBgBottom = [UIImage imageNamed:@"ipad-tabbar-left.png"];
    [toolbarBottom setBackgroundImage:toolbarBgBottom forToolbarPosition:UIToolbarPositionBottom barMetrics:UIBarMetricsDefault];
    
    UIImage *navBarImage = [UIImage imageNamed:@"ipad-menubar-left.png"];
    
    [self.navigationController.navigationBar setBackgroundImage:navBarImage 
                                                  forBarMetrics:UIBarMetricsDefault];

    
    dishTableView.delegate = self;
    dishTableView.dataSource = self;
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
    
    label.backgroundColor = [UIColor clearColor];
    label.font = [UIFont boldSystemFontOfSize:20.0];
    label.shadowColor = [UIColor blackColor];
    label.textAlignment = UITextAlignmentCenter;
    label.textColor = [UIColor whiteColor]; 
    self.navigationItem.titleView = label;
    
    label.text = @"Fridge";
    [label sizeToFit];
    
    UIColor *color = [UIColor colorWithPatternImage:[UIImage tallImageNamed:@"leather-background.png"]];
    
    [self.view setBackgroundColor:color];
    
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"MasterCell"; 
    
    MasterCell *cell = (MasterCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    
    Recipe* recipe = recipes[indexPath.row];
    [cell.dishLabel setText:recipe.name];
    
    return cell;
    
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 43;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [recipes count];
}



#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    Recipe* recipe = recipes[indexPath.row];
    [delegate loadRecipeIntoView:recipe];
}

@end
