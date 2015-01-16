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
    //[self.topImage setImage:[UIImage imageNamed:@"shirt.png"]];
    
    [self loadTops];
    [self loadBottoms];
}

- (void)loadTops {
    
    PFQuery *query = [PFQuery queryWithClassName:@"listing_with_image"];
    
    [query whereKey:@"category_path" equalTo:@"Tshirt"];
    
    [query findObjectsInBackgroundWithBlock:^(NSArray *shirts, NSError *error) {
        for (PFObject *shirt in shirts) {
            Top *toAdd = [[Top alloc] init];
            PFObject *imageObject = shirt[@"MainImage"];
            NSString *urlString = shirt[@"url"];
            NSString *url = imageObject[@"url_170x135"];
            NSURL *topURL = [NSURL URLWithString:url];
            NSData *topURLData = [NSData dataWithContentsOfURL:topURL];
            UIImage *toSet = [UIImage imageWithData:topURLData];
            [toAdd setImage:toSet];
            [toAdd setUrlString:urlString];
            [toAdd setStoreName:@"Etsy"];
            [toAdd setName:shirt[@"title"]];
            [toAdd setPrice:shirt[@"price"]];
            [toAdd setDescriptionString:shirt[@"description"]];
            [self.tops addObject:toAdd];
        }
        self.currentTop = [self.tops objectAtIndex:self.topIndex];
        [self.topImage setImage:[self.currentTop image]];
    }];
}

- (void)loadBottoms {
    
    PFQuery *query = [PFQuery queryWithClassName:@"listing_with_image"];
    
    [query whereKey:@"category_path" equalTo:@"Pants"];
    
    [query findObjectsInBackgroundWithBlock:^(NSArray *pants, NSError *error) {
        for (PFObject *pant in pants) {
            Bottom *toAdd = [[Bottom alloc] init];
            PFObject *imageObject = pant[@"MainImage"];
            NSString *urlString = pant[@"url"];
            NSString *url = imageObject[@"url_170x135"];
            NSURL *bottomURL = [NSURL URLWithString:url];
            NSData *bottomURLData = [NSData dataWithContentsOfURL:bottomURL];
            UIImage *toSet = [UIImage imageWithData:bottomURLData];
            [toAdd setImage:toSet];
            [toAdd setUrlString:urlString];
            [toAdd setStoreName:@"Etsy"];
            [toAdd setName:pant[@"title"]];
            [toAdd setPrice:pant[@"price"]];
            [toAdd setDescriptionString:pant[@"description"]];
            [self.bottoms addObject:toAdd];
        }
        self.currentBottom = [self.bottoms objectAtIndex:self.bottomIndex];
        [self.bottomImage setImage:[self.currentBottom image]];
    }];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString: @"topClicked"]) {
        SingleItemViewController *nextView = [segue destinationViewController];
        [nextView setGarment:[self.tops objectAtIndex:self.topIndex]];
    }
    if ([segue.identifier isEqualToString:@"bottomClicked"]) {
        SingleItemViewController *nextView = [segue destinationViewController];
        [nextView setGarment:[self.bottoms objectAtIndex:self.bottomIndex]];
    }
}

- (IBAction)topsRight:(id)sender {
    if (self.topIndex < [self.tops count] - 1) {
        self.topIndex = self.topIndex + 1;
    }
    self.currentTop = [self.tops objectAtIndex:self.topIndex];
    [self.topImage setImage:[self.currentTop image]];
}

- (IBAction)topsLeft:(id)sender {
    if (self.topIndex > 0) {
        self.topIndex = self.topIndex - 1;
    }
    self.currentTop = [self.tops objectAtIndex:self.topIndex];
    [self.topImage setImage:[self.currentTop image]];
}

- (IBAction)bottomsRight:(id)sender {
    if (self.bottomIndex < [self.bottoms count] - 1) {
        self.bottomIndex = self.bottomIndex + 1;
    }
    self.currentBottom = [self.bottoms objectAtIndex:self.bottomIndex];
    [self.bottomImage setImage:[self.currentBottom image]];
}

- (IBAction)bottomsLeft:(id)sender {
    if (self.bottomIndex > 0) {
        self.bottomIndex = self.bottomIndex - 1;
    }
    self.currentBottom = [self.bottoms objectAtIndex:self.bottomIndex];
    [self.bottomImage setImage:[self.currentBottom image]];
}

@end
