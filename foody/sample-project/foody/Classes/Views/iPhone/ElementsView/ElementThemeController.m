//
//  ElementThemeController.m
//  PodRadio
//
//  Created by Tope on 06/12/2011.
//  Copyright (c) 2011 AppDesignVault. All rights reserved.
//

#import "ElementThemeController.h"

@implementation ElementThemeController

#pragma mark - View lifecycle
@synthesize textField;

- (void)viewDidLoad {
    [self.view setBackgroundColor:[UIColor blackColor]];
    
    [self addButtonAtLocation:CGRectMake(10, 120, 295, 48) 
          WithBackgroundImage:@"button" 
                     andTitle:@"Standard Button"];
    
    [self addButtonAtLocation:CGRectMake(10, 190, 295, 48) 
          WithBackgroundImage:@"button-pressed" 
                     andTitle:@"Button Pressed"];
    
    
    [self customizeLabel];
    [self customizeTextField];
    [self addProgress];
    [self addSlider];
    
    UIColor *color = [UIColor colorWithPatternImage:[UIImage tallImageNamed:@"leather-background.png"]];
    [self.view setBackgroundColor:color];
    
    [super viewDidLoad];
}

- (void)viewDidUnload {
    [self setTextField:nil];
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Visual stuff

-(void)customizeLabel {
    UILabel *textLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 40, 200, 30)];
    [textLabel setTextColor:[UIColor colorWithRed:163.0/255 green:117.0/255 blue:89.0/255 alpha:1.0]];
    [textLabel setBackgroundColor:[UIColor clearColor]];
    [textLabel setFont:[UIFont boldSystemFontOfSize:20]];
    [textLabel setText:@"Label"];
    
    [self.view addSubview:textLabel];
}

-(void)customizeTextField {
    UIView *paddingView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 5, 20)];
    textField.leftView = paddingView;
    textField.leftViewMode = UITextFieldViewModeAlways;
}

- (void)addProgress {
    UIProgressView *progress = [[UIProgressView alloc] initWithFrame:CGRectMake(13, 300, 292, 10)];
    [progress setProgress:0.5];
    
    [self.view addSubview:progress];
}

-(void)addSlider {
    UISlider *slider = [[UISlider alloc] initWithFrame:CGRectMake(10, 330, 298, 10)];
    
    [slider setValue:0.5];
    [self.view addSubview:slider];
}

-(void)addButtonAtLocation:(CGRect)location WithBackgroundImage:(NSString*)imageName andTitle:(NSString*)title {
    UIButton * button = [[UIButton alloc] initWithFrame:location];
    UIImage * bgImage = [UIImage imageNamed:imageName];
    [button setBackgroundImage:bgImage forState:UIControlStateNormal];
    
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleShadowColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    
    [button.titleLabel setShadowOffset:CGSizeMake(1.0, -1.0)];
    [button.titleLabel setFont:[UIFont boldSystemFontOfSize:20]];
    
    [self.view addSubview:button];
}

- (BOOL)textFieldShouldReturn:(UITextField *)aTextField {
    [aTextField resignFirstResponder];
    
    return NO;
}


@end
