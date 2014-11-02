//
//  ViewController.h
//  Demo
//
//  Created by Justin Bush on 2014-11-02.
//  Copyright (c) 2014 Justin Bush. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "URLSearchBar.h"

@class URLSearchBar;

@interface ViewController : UIViewController <UIWebViewDelegate>

@property (nonatomic, retain) IBOutlet URLSearchBar *urlField;
@property (nonatomic, retain) IBOutlet UIWebView *webView;

@end
