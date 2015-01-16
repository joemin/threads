//
//  SingleItemViewController.h
//  threads
//
//  Created by Joseph Min on 1/16/15.
//
//

#import <UIKit/UIKit.h>
#import "Garment.h"
#import "MoreInfoViewController.h"

@interface SingleItemViewController : UIViewController

@property Garment *garment;
@property (strong, nonatomic) IBOutlet UILabel *name;
@property (strong, nonatomic) IBOutlet UIImageView *image;
@property (strong, nonatomic) IBOutlet UILabel *storeName;
@property (strong, nonatomic) IBOutlet UILabel *price;
@property (strong, nonatomic) IBOutlet UILabel *itemDescription;
@property (strong, nonatomic) IBOutlet UIButton *buyButton;

@end
