//
//  Step.m
//  SensibleFoody
//
//  Created by Tope on 31/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Step.h"

@implementation Step

@synthesize titleNumber, sideNumber, stepText, stepNumber;

-(id)initWithNumber:(int)number andStepText:(NSString*)str
{
    self = [super init];
    
    if(self)
    {
        self.stepNumber = [NSNumber numberWithInt:number];
        self.stepText = str;
    }
    
    return self;
}


-(NSString*)getTitleNumber
{
    return [NSString stringWithFormat:@"Step %d", [stepNumber intValue]];
}


-(NSString*)getSideNumber
{
    return [NSString stringWithFormat:@"%d", [stepNumber intValue]];
}

@end
