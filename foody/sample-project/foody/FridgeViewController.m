//
//  FridgeViewController.m
//  foody
//
//  Created by Siqi Wang on 07/04/2013.
//
//

#import "FridgeViewController.h"

@interface FridgeViewController ()

@end

@implementation FridgeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    foodList = [DataLoader loadInitFoods];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return foodList.count;
}

// The cell that is returned must be retrieved from a call to - dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    FoodItem *f = [foodList objectAtIndex:indexPath.row];
    foodCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"foodCell" forIndexPath:indexPath];
    UIImage *foodImage = [[UIImage alloc] init];
    foodImage = f.image;
    cell.im.image = foodImage;
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
}

@end
