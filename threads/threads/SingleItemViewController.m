//
//  SingleItemViewController.m
//  threads
//
//  Created by Joseph Min on 1/16/15.
//
//

#import "SingleItemViewController.h"

@implementation SingleItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.image setImage:[self.garment image]];
    self.name.text = [self.garment name];
    self.storeName.text = [self.garment storeName];
    self.itemDescription.text = [self.garment descriptionString];
    self.price.text = [[@"$" stringByAppendingString:[self.garment price]] stringByAppendingString: @" USD"];
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    MoreInfoViewController *webview = [segue destinationViewController];
    webview.urlToLoad = [self.garment urlString];
}

@end
