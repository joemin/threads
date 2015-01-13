//
//  CreateOutfitViewController.h
//  threads
//
//  Created by Joseph Min on 1/12/15.
//
//

#import <UIKit/UIKit.h>

@interface CreateOutfitViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *topImage;
@property (strong, nonatomic) IBOutlet UIImageView *bottomImage;
@property (strong, nonatomic) IBOutlet UIImageView *shoesImage;
@property (weak, nonatomic) IBOutlet UIButton *topsLeft;
@property (weak, nonatomic) IBOutlet UIButton *topsRight;
@property (weak, nonatomic) IBOutlet UIButton *bottomsLeft;
@property (weak, nonatomic) IBOutlet UIButton *bottomsRight;
@property (weak, nonatomic) IBOutlet UIButton *shoesLeft;
@property (weak, nonatomic) IBOutlet UIButton *shoesRight;
@property (nonatomic) NSMutableArray *tops;
@property (nonatomic) NSMutableArray *bottoms;
@property (nonatomic) NSMutableArray *shoes;

@end
