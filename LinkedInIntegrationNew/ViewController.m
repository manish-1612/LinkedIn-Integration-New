//
//  ViewController.m
//  LinkedInIntegrationNew
//
//  Created by Manish Kumar on 06/10/15.
//  Copyright © 2015 Innofied Solutions Pvt. Ltd. All rights reserved.
//

#import "ViewController.h"
#import <linkedin-sdk/LISDK.h>

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
    
    NSString *url = @"https://api.linkedin.com/v1/people/~";
    
    if ([LISDKSessionManager hasValidSession]) {
        [[LISDKAPIHelper sharedInstance] getRequest:url
                                            success:^(LISDKAPIResponse *response) {
                                                // do something with response
                                                NSLog(@"response : %@", response.data);
                                            }
                                              error:^(LISDKAPIError *apiError) {
                                                  // do something with error
                                                  NSLog(@"error : %@", apiError.localizedDescription);
                                              }];
    }
    

}


@end
