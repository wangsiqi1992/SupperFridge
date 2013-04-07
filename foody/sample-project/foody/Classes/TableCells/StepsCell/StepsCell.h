//
//  StepsCell.h
//  foody
//
//  Created by Tope on 09/01/2012.
//  Copyright (c) 2012 AppDesignVault. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StepsCell : UITableViewCell

@property (nonatomic, strong) IBOutlet UIImageView* dottedImageView;

@property (nonatomic, strong) IBOutlet UILabel* stepLabel;
@property (nonatomic, strong) IBOutlet UILabel* countLabel;
@property (nonatomic, strong) IBOutlet UILabel* bulletLabel;



@end
