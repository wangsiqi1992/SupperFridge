//
//  Step.h
//  SensibleFoody
//
//  Created by Tope on 31/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Step : NSObject

@property (nonatomic, copy) NSString* stepText;

@property (nonatomic, strong) NSNumber* stepNumber;

@property (nonatomic, readonly) NSString* sideNumber;

@property (nonatomic, readonly) NSString* titleNumber;

-(id)initWithNumber:(int)number andStepText:(NSString*)str;

@end
