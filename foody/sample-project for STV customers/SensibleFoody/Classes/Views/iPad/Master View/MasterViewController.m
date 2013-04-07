//
//  MasterViewController.m
//  foody
//
//  Created by Tope on 09/01/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MasterViewController.h"
#import "DataLoader.h"


@implementation MasterViewController

@synthesize dishTableView, recipes, delegate;

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
    UIToolbar *toolbarBottom = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 100, 320, 44)];
    [toolbarBottom setAutoresizingMask:UIViewAutoresizingFlexibleWidth];
    
    UIImage* toolbarBgBottom = [UIImage imageNamed:@"ipad-tabbar-left.png"];
    [toolbarBottom setBackgroundImage:toolbarBgBottom forToolbarPosition:UIToolbarPositionBottom barMetrics:UIBarMetricsDefault];
    
    [self.view addSubview:toolbarBottom];

    self.dishTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 320, 480) style:UITableViewStylePlain];
    [dishTableView setBackgroundColor:[UIColor clearColor]];
    [dishTableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    [self.view addSubview:dishTableView];
    
    SCTheme *theme = [SCTheme themeWithPath:@"foody-iPhone.sct"];
    
    UILabel *titleLabel = [[UILabel alloc] init];
    titleLabel.text = @"Recipes";
    titleLabel.textAlignment = UITextAlignmentCenter;
    [theme styleObject:titleLabel usingThemeStyle:@"navigationItemTitleLabel"];
    [titleLabel sizeToFit];
    self.navigationItem.titleView = titleLabel;
    
    self.recipes = [NSMutableArray arrayWithArray:[DataLoader loadSampleRecipes]];
    
    [self.tableViewModel setModeledTableView:dishTableView];
    
    SCClassDefinition *recipeDef = [SCClassDefinition definitionWithClass:[Recipe class] propertyNames:[NSArray arrayWithObjects:@"name",@"preparationTime", @"country", nil]];
    
    
    SCArrayOfObjectsSection *arraySection = [SCArrayOfObjectsSection sectionWithHeaderTitle:nil items:recipes itemsDefinition:recipeDef];
    
    arraySection.sectionActions.cellForRowAtIndexPath = ^SCCustomCell*(SCArrayOfItemsSection *itemsSection, NSIndexPath *indexPath)
    {
        NSArray *propertiesArray = [NSArray arrayWithObjects:@"name",@"preparationTime", @"country", nil];
        NSArray *tagsArray = [NSArray arrayWithObjects:@"1", @"2", @"3", nil];
        
        SCControlCell *customCell = [SCControlCell cellWithText:nil boundObject:nil objectBindings:[NSDictionary dictionaryWithObjects:propertiesArray forKeys:tagsArray] nibName:@"ThemeCell"];
        
        return customCell;
    };
    
    arraySection.cellActions.willDisplay = ^(SCTableViewCell *cell, NSIndexPath *indexPath)
    {
        
        Recipe* recipe = [recipes objectAtIndex:indexPath.row];
        
        UIImageView* dishImageView = (UIImageView*) [cell viewWithTag:4];
        
        [dishImageView setImage:[UIImage imageWithCGImage:recipe.image.CGImage scale:0.1 orientation:UIImageOrientationUp]];
        
        
    };
    
    self.tableViewModel.theme = theme;
    [self.tableViewModel addSection:arraySection];

    
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
@end
