//
//  ThemeListCell.m
//  foody
//
//  Created by Tope on 25/10/2011.
//  Copyright (c) 2011 AppDesignVault. All rights reserved.
//

#import "ThemeListCell.h"

@implementation ThemeListCell

@synthesize dishImage, dishLabel, timeLabel, countryButton;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
