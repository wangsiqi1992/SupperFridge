//
//  DataLoader.m
//  foody
//
//  Created by Tope on 11/01/2012.
//  Copyright (c) 2012 AppDesignVault. All rights reserved.
//

#import "DataLoader.h"
#import "Recipe.h"

@implementation DataLoader


+(NSArray*)loadSampleRecipes
{

    Recipe* recipe = [[Recipe alloc] initWithName:@"Spaghetti Bolognese" 
                                             time:@"2hrs 30" 
                                       andCountry:@"italian" 
                                         andImage:[UIImage imageNamed:@"dish-bolognese.jpg"] 
                                         andSteps:@[@"Peel and chop the onions. Pour the olive oil into a sizeable saucepan, Bring the water to a boil. Add the olive oil and salt, then the spaghetti",
                                                   @"Heat it and fry the onions until translucent, use a timer to keep track of the cooking time (check the pasta package)", @"Add the mince and fry until the mince is brown and crumbly, Check at the lower end of the cooking time to see if they are done", @"Now add the wine, worcester sauce, spices, tomatoes, squeezed garlic, chili paste, honey and tomato concentrate, Turn on the cold water and rinse the spaghetti under the water"] 
                                   andIngredients:@[@"1 kg chopped tomatoes(1100 grams)",
                                                   @"350 grams beef mince",	
                                                   @"2 onions",
                                                   @"60 grams tomato concentrate2",	
                                                   @"2 1/2 teaspoons	honey (12 grams)"]];
    
    
    Recipe* recipe2 = [[Recipe alloc] initWithName:@"Spaghetti Carbonara" 
                                             time:@"1hr 30" 
                                       andCountry:@"italian" 
                                         andImage:[UIImage imageNamed:@"dish-carbonara.jpg"] 
                                          andSteps:@[@"Cook the bacon, adjusting the heat as necessary to render fat out of the bacon, Peel and chop the onions. Pour the olive oil into a sizeable saucepan",
                                                    @"Quickly dump the pasta in the strainer and shake quickly, Heat it and fry the onions until translucent", @"Pour the contents of the frying pan (bacon and fat), Add the mince and fry until the mince is brown and crumbly", @"Now add the wine, worcester sauce, spices, tomatoes, squeezed garlic, chili paste, honey and tomato concentrate"] 
                                    andIngredients:@[@"1 kg chopped tomatoes(1100 grams)",
                                                    @"350 grams beef mince",	
                                                    @"2 onions",
                                                    @"60 grams tomato concentrate2",	
                                                    @"2 1/2 teaspoons	honey (12 grams)"]];
    
    Recipe* recipe3 = [[Recipe alloc] initWithName:@"Chicken Fajitas" 
                                              time:@"1hr 30" 
                                        andCountry:@"mexican" 
                                          andImage:[UIImage imageNamed:@"dish-fajitas.jpg"] 
                                          andSteps:@[@"Prepare the vegetables. De-seed the peppers",
                                                    @"Use the grater against one of the lime to get grated rind, Slice the chicken into thin slices of 3 centimeters long", @" Place the bowl on the side for about 30 minutes, Make the marinade", @"juices will soak into the chicken pieces, Place the shavings into a bowl, tomatoes"] 
                                    andIngredients:@[@"2 boneless chicken breasts",
                                                    @"2 limes",
                                                    @"1/2 tablespoon caster sugar",
                                                    @"2 teaspoon dried oregano",
                                                    @"1/2 teaspoon cinnamon powder",
                                                    @"2 onions"]];
    
    Recipe* recipe4 = [[Recipe alloc] initWithName:@"Beef Stroganoff" 
                                              time:@"1hr 30" 
                                        andCountry:@"russian" 
                                          andImage:[UIImage imageNamed:@"dish-beef.jpg"] 
                                          andSteps:@[@"Cut away any excess fat from the beef, cook the beef strips quickly - cooking in about three batches",
                                                    @"Combine the flour and the sour cream in a small bowl, Season with salt and pepper", @"Add the onion and continue to cook a few minutes more, Heat a large frying pan until very hot", @"Add the oil and cook the beef strips quickly, Add the onion and continue to cook a few minutes more"] 
                                    andIngredients:@[@"1 pound (600 gm) lean beef", 
                                                    @"6 - 8 white button mushrooms, sliced",
                                                    @"3 medium onions chopped",
                                                    @"2 cloves garlic, minced",
                                                    @"2 cups (500 ml) beef stock"]];
        
    NSArray* recipes = @[recipe, recipe2, recipe3, recipe4];
    
    return recipes;
        
}


+(NSArray*)loadFoodList
{
    FoodItem *food1 = [[FoodItem alloc] initWithName:@"Salmon" time:@"Apir 10" andCountry:@"1" andImage:[UIImage imageNamed:@"salmon.jpg"]];
    FoodItem *food2 = [[FoodItem alloc] initWithName:@"Beef" time:@"Apir 8" andCountry:@"1" andImage:[UIImage imageNamed:@"beef.jpg"]];
    FoodItem *food3 = [[FoodItem alloc] initWithName:@"Milk" time:@"Apir 15" andCountry:@"1" andImage:[UIImage imageNamed:@"milk.jpg"]];
    FoodItem *food4 = [[FoodItem alloc] initWithName:@"Eggs" time:@"May 10" andCountry:@"10" andImage:[UIImage imageNamed:@"eggs.jpg"]];
    FoodItem *food5 = [[FoodItem alloc] initWithName:@"Apple" time:@"Apir 10" andCountry:@"5" andImage:[UIImage imageNamed:@"apple.jpg"]];
    FoodItem *food6 = [[FoodItem alloc] initWithName:@"noodle" time:@"Dec 30" andCountry:@"1" andImage:[UIImage imageNamed:@"noodle.jpg"]];
    FoodItem *food7 = [[FoodItem alloc] initWithName:@"Brocoli" time:@"Apir 11" andCountry:@"1" andImage:[UIImage imageNamed:@"brocoli.jpg"]];
    FoodItem *food8 = [[FoodItem alloc] initWithName:@"Yogurt" time:@"Apir 25" andCountry:@"5" andImage:[UIImage imageNamed:@"yogurt.jpg"]];
    FoodItem *food9 = [[FoodItem alloc] initWithName:@"Chips" time:@"Dec 30" andCountry:@"2" andImage:[UIImage imageNamed:@"chips.jpg"]];
    
    NSArray *foods = @[food9,food8,food7,food6,food5,food4,food3,food2,food1];
    return foods;
    
}

















































@end
