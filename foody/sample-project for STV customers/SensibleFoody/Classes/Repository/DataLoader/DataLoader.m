//
//  DataLoader.m
//  foody
//
//  Created by Tope on 11/01/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DataLoader.h"
#import "Recipe.h"
#import "Step.h"

@implementation DataLoader


+(NSArray*)loadSampleRecipes
{

    Recipe* recipe = [[Recipe alloc] initWithName:@"Spaghetti Bolognese" 
                                             time:@"2hrs 30" 
                                       andCountry:@"italian" 
                                         andImage:[UIImage imageNamed:@"dish-bolognese.jpg"] 
                                         andSteps:[NSArray arrayWithObjects:[[Step alloc] initWithNumber:1 andStepText: @"Peel and chop the onions. Pour the olive oil into a sizeable saucepan, Bring the water to a boil. Add the olive oil and salt, then the spaghetti"],
                                                   [[Step alloc] initWithNumber:2 andStepText:@"Heat it and fry the onions until translucent, use a timer to keep track of the cooking time (check the pasta package)"], [[Step alloc] initWithNumber:3 andStepText:@"Add the mince and fry until the mince is brown and crumbly, Check at the lower end of the cooking time to see if they are done"], [[Step alloc] initWithNumber:4 andStepText:@"Now add the wine, worcester sauce, spices, tomatoes, squeezed garlic, chili paste, honey and tomato concentrate, Turn on the cold water and rinse the spaghetti under the water"], nil] 
                                   andIngredients:[NSArray arrayWithObjects:@"1 kg chopped tomatoes(1100 grams)",
                                                   @"350 grams beef mince",	
                                                   @"2 onions",
                                                   @"60 grams tomato concentrate2",	
                                                   @"2 1/2 teaspoons	honey (12 grams)", nil]];
    
    
    Recipe* recipe2 = [[Recipe alloc] initWithName:@"Spaghetti Carbonara" 
                                             time:@"1hr 30" 
                                       andCountry:@"italian" 
                                         andImage:[UIImage imageNamed:@"dish-carbonara.jpg"] 
                                          andSteps:[NSArray arrayWithObjects:[[Step alloc] initWithNumber:1 andStepText:@"Cook the bacon, adjusting the heat as necessary to render fat out of the bacon, Peel and chop the onions. Pour the olive oil into a sizeable saucepan"],
                                                    [[Step alloc] initWithNumber:2 andStepText:@"Quickly dump the pasta in the strainer and shake quickly, Heat it and fry the onions until translucent"], [[Step alloc] initWithNumber:3 andStepText:@"Pour the contents of the frying pan (bacon and fat), Add the mince and fry until the mince is brown and crumbly"], [[Step alloc] initWithNumber:3 andStepText:@"Now add the wine, worcester sauce, spices, tomatoes, squeezed garlic, chili paste, honey and tomato concentrate"], nil] 
                                    andIngredients:[NSArray arrayWithObjects:@"1 kg chopped tomatoes(1100 grams)",
                                                    @"350 grams beef mince",	
                                                    @"2 onions",
                                                    @"60 grams tomato concentrate2",	
                                                    @"2 1/2 teaspoons	honey (12 grams)", nil]];
    
    Recipe* recipe3 = [[Recipe alloc] initWithName:@"Chicken Fajitas" 
                                              time:@"1hr 30" 
                                        andCountry:@"mexican" 
                                          andImage:[UIImage imageNamed:@"dish-fajitas.jpg"] 
                                          andSteps:[NSArray arrayWithObjects:[[Step alloc] initWithNumber:1 andStepText:@"Prepare the vegetables. De-seed the peppers"],
                                                    [[Step alloc] initWithNumber:2 andStepText:@"Use the grater against one of the lime to get grated rind, Slice the chicken into thin slices of 3 centimeters long"], [[Step alloc] initWithNumber:3 andStepText:@" Place the bowl on the side for about 30 minutes, Make the marinade"], [[Step alloc] initWithNumber:4 andStepText:@"juices will soak into the chicken pieces, Place the shavings into a bowl, tomatoes"], nil] 
                                    andIngredients:[NSArray arrayWithObjects:@"2 boneless chicken breasts",
                                                    @"2 limes",
                                                    @"1/2 tablespoon caster sugar",
                                                    @"2 teaspoon dried oregano",
                                                    @"1/2 teaspoon cinnamon powder",
                                                    @"2 onions", nil]];
    
    Recipe* recipe4 = [[Recipe alloc] initWithName:@"Beef Stroganoff" 
                                              time:@"1hr 30" 
                                        andCountry:@"russian" 
                                          andImage:[UIImage imageNamed:@"dish-beef.jpg"] 
                                          andSteps:[NSArray arrayWithObjects:[[Step alloc] initWithNumber:1 andStepText:@"Cut away any excess fat from the beef, cook the beef strips quickly - cooking in about three batches"],
                                                    [[Step alloc] initWithNumber:2 andStepText:@"Combine the flour and the sour cream in a small bowl, Season with salt and pepper"], [[Step alloc] initWithNumber:3 andStepText:@"Add the onion and continue to cook a few minutes more, Heat a large frying pan until very hot"], [[Step alloc] initWithNumber:4 andStepText:@"Add the oil and cook the beef strips quickly, Add the onion and continue to cook a few minutes more"], nil] 
                                    andIngredients:[NSArray arrayWithObjects:@"1 pound (600 gm) lean beef", 
                                                    @"6 - 8 white button mushrooms, sliced",
                                                    @"3 medium onions chopped",
                                                    @"2 cloves garlic, minced",
                                                    @"2 cups (500 ml) beef stock", nil]];
    
    NSArray* recipes = [NSArray arrayWithObjects:recipe, recipe2, recipe3, recipe4, nil];
    
    return recipes;
        
}



@end
