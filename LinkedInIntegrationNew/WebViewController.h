//
//  WebViewController.h
//  LinkedInIntegrationNew
//
//  Created by Manish Kumar on 19/10/15.
//  Copyright © 2015 Innofied Solutions Pvt. Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIWebView *webview;

@property (strong, nonatomic) NSString *webData;

@end
