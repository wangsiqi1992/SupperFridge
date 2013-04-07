//
//  StepListCell.h
//  foody
//
//  Created by Tope on 29/12/2011.
//  Copyright (c) 2011 AppDesignVault. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StepListCell : UITableViewCell

@property (nonatomic, strong) IBOutlet UILabel* stepLabel;

@property (nonatomic, strong) IBOutlet UILabel* countLabel;

@property (nonatomic, strong) IBOutlet UILabel* bulletLabel;

@property (weak, nonatomic) IBOutlet UIImageView *foodImage;

@end
