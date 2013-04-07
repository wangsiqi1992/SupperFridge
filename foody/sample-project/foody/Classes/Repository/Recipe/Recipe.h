//
//  Recipe.h
//  foody
//
//  Created by Tope on 11/01/2012.
//  Copyright (c) 2012 AppDesignVault. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Recipe : NSObject

@property (nonatomic, copy) NSString* name;

@property (nonatomic, copy) NSString* preparationTime;

@property (nonatomic, copy) NSString* country;

@property (nonatomic, strong) UIImage* image;

@property (nonatomic, strong) NSArray* ingredients;

@property (nonatomic, strong) NSArray* preparationSteps;

-(id)initWithName:(NSString*)recipeName 
             time:(NSString*)prepTime 
       andCountry:(NSString*)theCountry 
         andImage:(UIImage*)theImage 
         andSteps:(NSArray*)steps 
   andIngredients:(NSArray*)theIngredients;

@end
