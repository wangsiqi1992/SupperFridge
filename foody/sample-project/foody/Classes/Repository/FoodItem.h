//
//  FoodItem.h
//  foody
//
//  Created by Siqi Wang on 06/04/2013.
//
//

#import <Foundation/Foundation.h>

@interface FoodItem : NSObject
@property (nonatomic, copy) NSString* name;

@property (nonatomic, copy) NSString* expiryDate;

@property (nonatomic, copy) NSString* quantity;

@property (nonatomic, strong) UIImage* image;


-(id)initWithName:(NSString*)recipeName
             time:(NSString*)exDate
       andCountry:(NSString*)quan
         andImage:(UIImage*)theImage;

@end
