//
//  FoodItem.m
//  foody
//
//  Created by Siqi Wang on 06/04/2013.
//
//

#import "FoodItem.h"

@implementation FoodItem
@synthesize name, expiryDate, quantity, image;

-(id)initWithName:(NSString*)recipeName
             time:(NSString*)exDate
       andCountry:(NSString*)quan
         andImage:(UIImage*)theImage
{
    self = [super init];
    
    if(self)
    {
        self.name = recipeName;
        self.expiryDate = exDate;
        self.quantity = quan;
        self.image = theImage;
    }
    
    return self;
}

@end
