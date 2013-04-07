//
//  Recipe.m
//  foody
//
//  Created by Tope on 11/01/2012.
//  Copyright (c) 2012 AppDesignVault. All rights reserved.
//

#import "Recipe.h"

@implementation Recipe

@synthesize name, preparationTime, country, image, preparationSteps, ingredients;


-(id)initWithName:(NSString*)recipeName 
                       time:(NSString*)prepTime 
                 andCountry:(NSString*)theCountry 
                   andImage:(UIImage*)theImage 
                   andSteps:(NSArray*)steps 
             andIngredients:(NSArray*)theIngredients
{
    self = [super init];
    
    if(self)
    {
        self.name = recipeName;
        self.preparationTime = prepTime;
        self.country = theCountry;
        self.image = theImage;
        self.preparationSteps = steps;
        self.ingredients = theIngredients;

    }
    
    return self;
}
@end
