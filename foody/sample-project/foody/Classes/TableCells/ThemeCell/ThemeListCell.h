//
//  ThemeListCell.h
//  foody
//
//  Created by Tope on 25/10/2011.
//  Copyright (c) 2011 AppDesignVault. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThemeListCell : UITableViewCell

@property (nonatomic, strong) IBOutlet UIImageView* dishImage;

@property (nonatomic, strong) IBOutlet UILabel* dishLabel;

@property (nonatomic, strong) IBOutlet UILabel* timeLabel;

@property (nonatomic, strong) IBOutlet UIButton* countryButton;


@end
