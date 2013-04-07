//
//  DetailThemeControllerIPad.m
//  foody
//
//  Created by Tope on 09/01/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DetailThemeControllerIPad.h"

@interface DetailThemeControllerIPad ()

@end

@implementation DetailThemeControllerIPad


- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.tableViewModel.theme = [SCTheme themeWithPath:@"foody-iPad-detail.sct"];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
}

@end

