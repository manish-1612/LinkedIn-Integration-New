//
//  ViewController.m
//  LinkedInIntegrationNew
//
//  Created by Manish Kumar on 06/10/15.
//  Copyright © 2015 Innofied Solutions Pvt. Ltd. All rights reserved.
//

#import "ViewController.h"
#import <linkedin-sdk/LISDK.h>
#import "WebViewController.h"

@interface ViewController (){
    NSString *stringData;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startLinkedInIntegration:(UIButton *)sender {
    
//    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
   
//    NSDictionary *dictionary = [[NSDictionary alloc]initWithObjects:@[@"code" , Client_ID , @"http://innofied.com", @"35336700", @"r_basicprofile"] forKeys:@[@"response_type", @"client_id", @"redirect_uri", @"state" , @"scope"]];
    
//    [manager GET:@"https://www.linkedin.com/uas/oauth2/authorization" parameters:dictionary success:^(AFHTTPRequestOperation * _Nonnull operation, id  _Nonnull responseObject) {
//            NSLog(@"JSON: %@", responseObject);
//    } failure:^(AFHTTPRequestOperation * _Nonnull operation, NSError * _Nonnull error) {
//            NSLog(@"Error: %@", error);
//    }];
    
//    [[LISDKAPIHelper sharedInstance] getRequest:@"https://www.linkedin.com/uas/oauth2/authorization"
//                                        success:(void(^)(LISDKAPIResponse *))success
//                                          error:(void(^)(LISDKAPIError *))error]
    
    
    [self openWebViewVC];
    
    

}

-(void)openWebViewVC{
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    WebViewController *webViewController = [storyboard instantiateViewControllerWithIdentifier:@"webViewController"];
    webViewController.webData = stringData;
    [self presentViewController:webViewController animated:YES completion:nil];

}

@end
