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
#import "SingleItemViewController.h"

@interface CreateOutfitViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *topImage;
@property (strong, nonatomic) IBOutlet UIImageView *bottomImage;

- (IBAction)topsRight:(id)sender;
- (IBAction)topsLeft:(id)sender;
- (IBAction)bottomsRight:(id)sender;
- (IBAction)bottomsLeft:(id)sender;

@property (nonatomic) NSMutableArray *tops;
@property (nonatomic) NSMutableArray *bottoms;
@property (nonatomic) NSMutableArray *shoes;

@property (nonatomic) Top *currentTop;
@property (nonatomic) Bottom *currentBottom;
@property (nonatomic) UIImage *currentShoes;

@property NSUInteger topIndex;
@property NSUInteger bottomIndex;
@property NSUInteger shoeIndex;

- (void)loadTops;
- (void)loadBottoms;
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender;

@end
