//
//  URLSearchBar.m
//  Demo
//
//  Created by Justin Bush on 2014-11-02.
//  Copyright (c) 2014 Justin Bush. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

#import "URLSearchBar.h"

@implementation URLSearchBar

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
    }
    return self;
}

- (void) setupBarWithWebView:(UIWebView *)webView {
    self.delegate = self;
    self.webView = webView;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (void) textFieldDidEndEditing:(UITextField *)textField {
    [self loadURLFromString:textField.text];
}

- (void) loadURLFromString:(NSString *)string {
    NSURL *url = [NSURL URLWithString:string];
    
    // Check if string is a valid URL address
    if ([string rangeOfString:@"."].location != NSNotFound) {
        if (!url.scheme) {
            url = [NSURL URLWithString:[NSString stringWithFormat:@"http://%@", string]];
        }
    }
    
    // String not a valid URL? Format for Google Search
    if (!url.host) {
        NSString *googleSearch = [string stringByReplacingOccurrencesOfString:@" " withString:@"+"];
        url = [NSURL URLWithString:[NSString stringWithFormat:@"http://www.google.com/search?q=%@", googleSearch]];
    }
    
    // fill the textfield with any changes made to the string and load the url into the webview.
    self.text = [url absoluteString];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
    [self.webView loadRequest:request];
}

@end
