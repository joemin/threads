//
//  CreateOutfitViewController.m
//  threads
//
//  Created by Joseph Min on 1/12/15.
//
//

#import "CreateOutfitViewController.h"

@implementation CreateOutfitViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _tops = [[NSMutableArray alloc] init];
    _bottoms = [[NSMutableArray alloc]init];
    _shoes = [[NSMutableArray alloc] init];
    _topIndex = 0;
    _bottomIndex = 0;
    [self.topImage setImage:[UIImage imageNamed:@"shirt.png"]];
    
    [self loadTops];
    [self loadBottoms];
}

- (void)loadTops {
    
    PFQuery *listingQuery = [PFQuery queryWithClassName:@"listing"];
    PFQuery *imageQuery = [PFQuery queryWithClassName:@"listing_image"];
    
    [listingQuery whereKey:@"category_path" equalTo:@"Tshirt"];
    [imageQuery whereKey:@"listing_id" matchesKey:@"listing_id" inQuery:listingQuery];
    imageQuery.limit = 10;
    
    [imageQuery findObjectsInBackgroundWithBlock:^(NSArray *shirts, NSError *error) {
        for (PFObject *shirt in shirts) {
            Top *toAdd = [[Top alloc] init];
            NSString *url = shirt[@"url_170x135"];
            NSURL *topURL = [NSURL URLWithString:url];
            NSData *topURLData = [NSData dataWithContentsOfURL:topURL];
            UIImage *toSet = [UIImage imageWithData:topURLData];
            [toAdd setTopImage:toSet];
            [self.tops addObject:toAdd];
        }
        self.currentTop = [self.tops objectAtIndex:self.topIndex];
        [self.topImage setImage:[self.currentTop getTopImage]];
    }];
}

- (void)loadBottoms {
    
    PFQuery *listingQuery = [PFQuery queryWithClassName:@"listing"];
    PFQuery *imageQuery = [PFQuery queryWithClassName:@"listing_image"];
    
    [listingQuery whereKey:@"category_path" equalTo:@"Pants"];
    [imageQuery whereKey:@"listing_id" matchesKey:@"listing_id" inQuery:listingQuery];
    imageQuery.limit = 10;
    
    [imageQuery findObjectsInBackgroundWithBlock:^(NSArray *pants, NSError *error) {
        for (PFObject *pant in pants) {
            Bottom *toAdd = [[Bottom alloc] init];
            NSString *url = pant[@"url_170x135"];
            NSURL *bottomURL = [NSURL URLWithString:url];
            NSData *bottomURLData = [NSData dataWithContentsOfURL:bottomURL];
            UIImage *toSet = [UIImage imageWithData:bottomURLData];
            [toAdd setBottomImage:toSet];
            [self.bottoms addObject:toAdd];
        }
        self.currentBottom = [self.bottoms objectAtIndex:self.bottomIndex];
        [self.bottomImage setImage:[self.currentBottom getBottomImage]];
    }];
}

- (IBAction)topsRight:(id)sender {
    if (self.topIndex < [self.tops count] - 1) {
        self.topIndex = self.topIndex + 1;
    }
    self.currentTop = [self.tops objectAtIndex:self.topIndex];
    [self.topImage setImage:[self.currentTop getTopImage]];
}

- (IBAction)topsLeft:(id)sender {
    if (self.topIndex > 0) {
        self.topIndex = self.topIndex - 1;
    }
    self.currentTop = [self.tops objectAtIndex:self.topIndex];
    [self.topImage setImage:[self.currentTop getTopImage]];
}

- (IBAction)bottomsRight:(id)sender {
    if (self.bottomIndex < [self.bottoms count] - 1) {
        self.bottomIndex = self.bottomIndex + 1;
    }
    self.currentBottom = [self.bottoms objectAtIndex:self.bottomIndex];
    [self.bottomImage setImage:[self.currentBottom getBottomImage]];
}

- (IBAction)bottomsLeft:(id)sender {
    if (self.bottomIndex > 0) {
        self.bottomIndex = self.bottomIndex - 1;
    }
    self.currentBottom = [self.bottoms objectAtIndex:self.bottomIndex];
    [self.bottomImage setImage:[self.currentBottom getBottomImage]];
}

@end
