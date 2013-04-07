//
//  ViewController.m
//  foody
//
//  Created by Tope on 25/10/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "StepListController.h"
#import "Recipe.h"
#import "Step.h"
#import "DataLoader.h"

@implementation StepListController


@synthesize stepsTableView, steps, tableViewModel;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    
    NSArray* recipes = [DataLoader loadSampleRecipes];

    Recipe* recipe = [recipes objectAtIndex:0];

    self.steps = [NSMutableArray arrayWithArray:recipe.preparationSteps];
    
    self.stepsTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 320, 480) style:UITableViewStylePlain];
    [stepsTableView setBackgroundColor:[UIColor clearColor]];
    [stepsTableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    [self.view addSubview:stepsTableView];
    
    self.tableViewModel = [[SCTableViewModel alloc] initWithTableView:stepsTableView];
    
    SCTheme *theme = [SCTheme themeWithPath:@"foody-iPhone.sct"];
    
    UILabel *titleLabel = [[UILabel alloc] init];
    titleLabel.text = @"Steps";
    titleLabel.textAlignment = UITextAlignmentCenter;
    [theme styleObject:titleLabel usingThemeStyle:@"navigationItemTitleLabel"];
    [titleLabel sizeToFit];
    self.navigationItem.titleView = titleLabel;

    SCClassDefinition *recipeDef = [SCClassDefinition definitionWithClass:[Step class] propertyNames:[NSArray arrayWithObjects:@"stepText", nil]];
    
    [recipeDef propertyDefinitionWithName:@"stepText"].type = SCPropertyTypeTextView;
    
    
    SCArrayOfObjectsSection *arraySection = [SCArrayOfObjectsSection sectionWithHeaderTitle:nil items:steps itemsDefinition:recipeDef];
    
    arraySection.sectionActions.cellForRowAtIndexPath = ^SCCustomCell*(SCArrayOfItemsSection *itemsSection, NSIndexPath *indexPath)
    {
        NSArray *propertiesArray = [NSArray arrayWithObjects:@"sideNumber", @"titleNumber", @"stepText", nil];
        
        NSArray *tagsArray = [NSArray arrayWithObjects:@"1", @"2", @"3", nil];
        
        SCControlCell *customCell = [SCControlCell cellWithText:nil objectBindings:[NSDictionary dictionaryWithObjects:propertiesArray forKeys:tagsArray]  nibName:@"StepsCell"];
                                     
        //SCControlCell *customCell = [SCControlCell cellWithText:nil withBoundObject:nil withObjectBindings:[NSDictionary dictionaryWithObjects:propertiesArray forKeys:tagsArray] withNibName:@"StepsCell"];
        
        return customCell;
    };
    
    [tableViewModel setTheme:theme];
    [tableViewModel addSection:arraySection];

    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
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
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


@end
