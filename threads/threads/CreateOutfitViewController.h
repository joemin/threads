//
//  CreateOutfitViewController.h
//  threads
//
//  Created by Joseph Min on 1/12/15.
//
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import "Top.h"
#import "Bottom.h"

@interface CreateOutfitViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *topImage;
@property (strong, nonatomic) IBOutlet UIImageView *bottomImage;
@property (strong, nonatomic) IBOutlet UIImageView *shoesImage;

- (IBAction)topsRight:(id)sender;
- (IBAction)topsLeft:(id)sender;

@property (nonatomic) NSMutableArray *tops;
@property (nonatomic) NSMutableArray *bottoms;
@property (nonatomic) NSMutableArray *shoes;

@property (nonatomic) Top *currentTop;
@property (nonatomic) Bottom *currentBottom;
@property (nonatomic) UIImage *currentShoes;

@property NSUInteger topIndex;
@property NSUInteger bottomIndex;
@property NSUInteger shoeIndex;

- loadTops:(PFQuery*)listingQuery withImageQuery:(PFQuery *)imageQuery;
- loadBottoms:(PFQuery*)listingQuery withImageQuery:(PFQuery *)imageQuery;
//- (void)topsShiftRight;

@end
