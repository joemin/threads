//
//  MoreInfoViewController.h
//  threads
//
//  Created by Joseph Min on 1/15/15.
//
//

#import <UIKit/UIKit.h>

@interface MoreInfoViewController : UIViewController

@property NSString *urlToLoad;
@property (strong, nonatomic) IBOutlet UIWebView *webView;

@end
