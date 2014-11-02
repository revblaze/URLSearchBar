//
//  ViewController.m
//  Demo
//
//  Created by Justin Bush on 2014-11-02.
//  Copyright (c) 2014 Justin Bush. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Setup URLSearchBar
    [self.urlField setupBarWithWebView:self.webView];
    
    // WebView Homepage
    NSURL *homePage = [NSURL URLWithString:@"http://www.apple.com/"];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:homePage];
    [_webView loadRequest:urlRequest];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Share Web Pages
-(IBAction)shareWebPage:(id)sender {
    if ([_urlField.text isEqualToString:@""]) {
        // Do Nothing
    }
    else if (NSClassFromString(@"UIActivityViewController")) {
        NSURL *urlStringToShare = _webView.request.URL;
        NSArray *dataToShare = @[urlStringToShare];
        UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:dataToShare
                                                                                 applicationActivities:nil];
        [self presentViewController:activityVC animated:YES completion:nil];
    }
}

@end
