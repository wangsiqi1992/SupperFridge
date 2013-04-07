//
//  MasterCell.h
//  foody
//
//  Created by Tope on 09/01/2012.
//  Copyright (c) 2012 AppDesignVault. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MasterCell : UITableViewCell


@property (strong, nonatomic) IBOutlet UIImageView *bgImageView;
@property (strong, nonatomic) IBOutlet UILabel *dishLabel;
@property (strong, nonatomic) IBOutlet UILabel *countLabel;
@property (strong, nonatomic) IBOutlet UIImageView *countBg;

@end
