//
//  WebViewController.m
//  LinkedInIntegrationNew
//
//  Created by Manish Kumar on 19/10/15.
//  Copyright © 2015 Innofied Solutions Pvt. Ltd. All rights reserved.
//

#import "WebViewController.h"
#import <linkedin-sdk/LISDK.h>

@interface WebViewController ()<UIWebViewDelegate>

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //_webview.frame = self.view.frame;
    
    NSString *url = [NSString stringWithFormat:@"https://www.linkedin.com/uas/oauth2/authorization?client_id=%@&redirect_uri=http://innofied.com&response_type=code&scope=%@&state=35336700",Client_ID, LISDK_BASIC_PROFILE_PERMISSION];
    
    _webview.delegate = self;
    [[LISDKAPIHelper sharedInstance] getRequest:url success:^(LISDKAPIResponse *response) {
        NSLog(@"response : %@", response.data);
        
        [_webview loadHTMLString:response.data baseURL:nil];
        
        
        
        
    } error:^(LISDKAPIError *error) {
        NSLog(@"error : %@", error);
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)webViewDidFinishLoad:(UIWebView *)webView{
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
