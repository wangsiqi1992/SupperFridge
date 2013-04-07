//
//  ViewController.m
//  foody
//
//  Created by Tope on 25/10/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ListThemeController.h"
#import "Recipe.h"
#import "DataLoader.h"

@implementation ListThemeController


@synthesize dishTableView, recipes;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
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
