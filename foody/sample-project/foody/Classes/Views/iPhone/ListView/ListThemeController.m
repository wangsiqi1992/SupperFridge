//
//  ViewController.m
//  foody
//
//  Created by Tope on 25/10/2011.
//  Copyright (c) 2011 AppDesignVault. All rights reserved.
//

#import "ListThemeController.h"
#import "ThemeListCell.h"
#import "DetailThemeController.h"
#import "Recipe.h"
#import "DataLoader.h"

@implementation ListThemeController

@synthesize dishTableView, recipes;


#pragma mark - View lifecycle

- (void)viewDidLoad {
    self.recipes = [DataLoader loadSampleRecipes];
    
    [dishTableView setDelegate:self];
    [dishTableView setDataSource:self];
    [dishTableView setBackgroundColor:[UIColor clearColor]];
    [dishTableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    [self.view addSubview:dishTableView];
    
    UIColor *color = [UIColor colorWithPatternImage:[UIImage tallImageNamed:@"leather-background.png"]];
    
    [self.view setBackgroundColor:color];

    self.title = @"Recipe";
    
    [super viewDidLoad];
}

- (void)viewDidUnload {
    [super viewDidUnload];
    self.dishTableView = nil;
    self.recipes = nil;
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


#pragma mark - Table View datasource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [recipes count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {    
    static NSString *CellIdentifier = @"ThemeListCell";    
    ThemeListCell *cell = (ThemeListCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];

    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    
    Recipe* recipe = recipes[indexPath.row];
    
    [cell.dishImage setImage:recipe.image];
    [cell.dishLabel setText:recipe.name];
    [cell.countryButton setTitle:recipe.country forState:UIControlStateNormal];
    [cell.timeLabel setText:recipe.preparationTime];
    
    return cell;
    
}

#pragma mark - Table View delegate

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 94;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}


#pragma mark - Segue

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    DetailThemeController* detail = segue.destinationViewController;   
   
    NSIndexPath *selectedPath = [dishTableView indexPathForSelectedRow];
    detail.recipe = recipes[selectedPath.row];
}


@end
