//
//  MasterCell.m
//  foody
//
//  Created by Tope on 09/01/2012.
//  Copyright (c) 2012 AppDesignVault. All rights reserved.
//

#import "MasterCell.h"

@implementation MasterCell

@synthesize countBg, countLabel, bgImageView, dishLabel;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    if(selected)
    {
        UIImage* bgSelected = [UIImage imageNamed:@"ipad-menu-item-selected.png"];
        UIImage* countSelected = [UIImage imageNamed:@"ipad-menu-count-selected.png"];
        
        [bgImageView setImage:bgSelected];
        [countBg setImage:countSelected];
        
        [dishLabel setTextColor:[UIColor whiteColor]];
        [countLabel setTextColor:[UIColor blackColor]];
        
    }
    else
    {
        UIImage* bg = [UIImage imageNamed:@"ipad-menu-item.png"];
        UIImage* countbg = [UIImage imageNamed:@"ipad-menu-count.png"];
        
        [bgImageView setImage:bg];
        [countBg setImage:countbg];
        
        [dishLabel setTextColor:[UIColor blackColor]];
        [countLabel setTextColor:[UIColor whiteColor]];
        
    }

    
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
