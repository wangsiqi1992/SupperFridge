//
//  DataLoader.h
//  foody
//
//  Created by Tope on 11/01/2012.
//  Copyright (c) 2012 AppDesignVault. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FoodItem.h"

@interface DataLoader : NSObject

+(NSArray*)loadSampleRecipes;
+(NSArray*)loadFoodList;
@end
