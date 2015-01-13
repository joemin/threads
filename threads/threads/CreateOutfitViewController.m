//
//  CreateOutfitViewController.m
//  threads
//
//  Created by Joseph Min on 1/12/15.
//
//

#import "CreateOutfitViewController.h"
#import <Parse/Parse.h>

@implementation CreateOutfitViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _tops = [[NSMutableArray alloc] init];
    _bottoms = [[NSMutableArray alloc]init];
    _shoes = [[NSMutableArray alloc] init];
    
    
    //NSURL *topURL = [NSURL URLWithString:@"https://img0.etsystatic.com/030/2/9364649/il_570xN.585757610_tivc.jpg"];
    //NSData *topURLData = [NSData dataWithContentsOfURL:topURL];
    //UIImage *setTopImage = [UIImage imageWithData:topURLData];
    
    PFQuery *listingQuery = [PFQuery queryWithClassName:@"listing"];
    PFQuery *imageQuery = [PFQuery queryWithClassName:@"listing_image"];

    [listingQuery whereKey:@"category_path" equalTo:@"Tshirt"];
    
    [imageQuery whereKey:@"listing_id" matchesKey:@"listing_id" inQuery:listingQuery];
    
    [imageQuery findObjectsInBackgroundWithBlock:^(NSArray *shirts, NSError *error) {
        PFObject *first = shirts[0];
        NSLog(first.objectId);
        NSString *url = first[@"url_170x135"];
        NSLog(url);
        NSURL *topURL = [NSURL URLWithString:url];
        NSData *topURLData = [NSData dataWithContentsOfURL:topURL];
        UIImage *setTopImage = [UIImage imageWithData:topURLData];
        [self.topImage setImage:setTopImage];
    }];
}

@end
