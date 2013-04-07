//
//  StepListCell.m
//  foody
//
//  Created by Tope on 29/12/2011.
//  Copyright (c) 2011 AppDesignVault. All rights reserved.
//

#import "StepListCell.h"

@implementation StepListCell

@synthesize stepLabel, countLabel, bulletLabel;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

@end
