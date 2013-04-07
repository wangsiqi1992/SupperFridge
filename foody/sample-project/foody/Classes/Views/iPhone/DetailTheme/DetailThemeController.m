//
//  DetailThemeController.m
//  foody
//
//  Created by Tope on 25/10/2011.
//  Copyright (c) 2011 AppDesignVault. All rights reserved.
//

#import "DetailThemeController.h"
#import "StepListCell.h"

@implementation DetailThemeController
@synthesize tableSteps;
@synthesize scrollView, dishImage, ingredientsTextView, recipe;
@synthesize btnAction;

#pragma mark - View lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIColor *color = [UIColor colorWithPatternImage:[UIImage tallImageNamed:@"leather-background.png"]];
    [self.view setBackgroundColor:color];
    
    UIBarButtonItem* editButton = [[UIBarButtonItem alloc] initWithTitle:@"Edit" style:UIBarButtonItemStyleBordered target:nil action:nil];
    
    [self.navigationItem setRightBarButtonItem:editButton];
    
    
    [dishImage setImage:recipe.image];
    
    NSString* ingredients = @"";
    for (NSString* ingredient in recipe.ingredients) {
        ingredients = [NSString stringWithFormat:@"%@ \n %@", ingredients, ingredient];
    }
    
    [ingredientsTextView setText:ingredients];
    
    self.btnAction = [UIButton buttonWithType:UIButtonTypeCustom];
    [btnAction setBackgroundImage:[UIImage imageNamed:@"button.png"]
                         forState:UIControlStateNormal];
    [btnAction addTarget:self
               action:@selector(pressedButton:)
     forControlEvents:UIControlEventTouchDown];
    [btnAction setTitle:@"Press me!" forState:UIControlStateNormal];
    btnAction.frame = CGRectMake(0, 0, 200, 40.0);
    btnAction.center = self.scrollView.center;
    [self.scrollView addSubview:btnAction];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    CGFloat tableHeight = 0.0f;
    for (NSString *step in self.recipe.preparationSteps) {
        CGSize stepSize = [step sizeWithFont:[UIFont systemFontOfSize:14.0f] constrainedToSize:CGSizeMake(220, 1000)];
        tableHeight += 50 + stepSize.height;
    }
    
    CGRect tableFrame = self.tableSteps.frame;
    tableFrame.size.height = tableHeight;
    self.tableSteps.frame = tableFrame;
    
    [scrollView setContentSize:CGSizeMake(320, 470 + tableHeight)];
    
    CGRect btnFrame = self.btnAction.frame;
    btnFrame.origin.y = scrollView.contentSize.height - 50;
    self.btnAction.frame = btnFrame;
    
}

- (void)viewDidUnload  {
    [self setScrollView:nil];
    [self setTableSteps:nil];
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Actions

- (void)pressedButton:(id)sender {
    [[[UIAlertView alloc] initWithTitle:@"Message" message:@"You pressed the button"
                               delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil]
     show];
}


#pragma mark - Table View datasource


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [recipe.preparationSteps count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {    
    static NSString *CellIdentifier = @"StepListCell";    
    StepListCell *cell = (StepListCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    
    NSString* step = (recipe.preparationSteps)[indexPath.row];
    CGSize stepSize = [step sizeWithFont:[UIFont systemFontOfSize:14.0f] constrainedToSize:CGSizeMake(220, 1000)];
    
    [cell.stepLabel setText:step];
    [cell.stepLabel setNumberOfLines:0];
    CGRect stepFrame = cell.stepLabel.frame;
    stepFrame.size.height = stepSize.height;
    cell.stepLabel.frame = stepFrame;
    [cell.countLabel setText:[NSString stringWithFormat:@"Step %d", indexPath.row + 1]];
    [cell.bulletLabel setText:[NSString stringWithFormat:@"%d", indexPath.row + 1]];
    
    return cell;
    
}

#pragma mark - Table View delegate

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *step = (self.recipe.preparationSteps)[indexPath.row];
    CGSize stepSize = [step sizeWithFont:[UIFont systemFontOfSize:14.0f] constrainedToSize:CGSizeMake(220, 1000)];
    
    return 50 + stepSize.height;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

@end
