//
//  FridgeViewController.h
//  foody
//
//  Created by Siqi Wang on 07/04/2013.
//
//

#import <UIKit/UIKit.h>
#import "foodCell.h"
#import "DataLoader.h"


@interface FridgeViewController : UICollectionViewController<UICollectionViewDataSource, UICollectionViewDelegate>
{
    NSArray *foodList;
}

@end
