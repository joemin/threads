//
//  CreateOutfitViewController.h
//  threads
//
//  Created by Joseph Min on 1/12/15.
//
//

#import <UIKit/UIKit.h>

@interface CreateOutfitViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *topImage;
@property (weak, nonatomic) IBOutlet UIImageView *bottomImage;
@property (weak, nonatomic) IBOutlet UIImageView *shoesImage;
@property (weak, nonatomic) IBOutlet UIButton *topsLeft;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topsRight;
@property (weak, nonatomic) IBOutlet UIButton *bottomsLeft;
@property (weak, nonatomic) IBOutlet UIButton *bottomsRight;
@property (weak, nonatomic) IBOutlet UIButton *shoesLeft;
@property (weak, nonatomic) IBOutlet UIButton *shoesRight;
@property (weak, nonatomic) NSMutableArray *tops;
@property (weak, nonatomic) NSMutableArray *bottoms;
@property (weak, nonatomic) NSMutableArray *shoes;

@end
