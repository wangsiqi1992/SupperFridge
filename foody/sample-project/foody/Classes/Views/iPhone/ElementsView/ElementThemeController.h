//
//  ElementThemeController.h
//  PodRadio
//
//  Created by Tope on 06/12/2011.
//  Copyright (c) 2011 AppDesignVault. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ElementThemeController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *textField;

- (void)customizeLabel;
- (void)customizeTextField;
- (void)addProgress;
- (void)addSlider;
- (void)addButtonAtLocation:(CGRect)location WithBackgroundImage:(NSString*)imageName andTitle:(NSString*)title;

    
@end
