//
//  MoreInfoViewController.m
//  threads
//
//  Created by Joseph Min on 1/15/15.
//
//

#import "MoreInfoViewController.h"

@implementation MoreInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSURL *webUrl = [NSURL URLWithString:self.urlToLoad];
    NSURLRequest *WebRequest = [NSURLRequest requestWithURL:webUrl];
    [self.webView loadRequest:WebRequest];
}

@end
