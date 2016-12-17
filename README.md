<img src="Cover.png" width="860" />

URLSearchBar is a free, open source project that combines the power of informal web addresses and instant search results.

## Features
- iPhone and iPad support
- URL / Search term detection
- Informal web address compatibile
- Universal search engine compatibile
- UIWebView and WKWebView compatibile

## Usage
1. Copy URLSearchBar classes into existing project
2. Import and class URLSearchBar in your header file

   `#import "URLSearchBar.h"`

   `@class URLSearchBar;`

3. Create an IBOutlet for your bar 

   `@property (nonatomic, retain) IBOutlet URLSearchBar *urlField;`

4. Add the URLSearchBar setup to the ViewDidLoad method

   `[self.urlField setupBarWithWebView:self.webView];`

5. Specify the class of the UITextField in the Indentity Inspector as "URLSearchBar and make all connections in your storyboard

Refer to the Demo project if you're having trouble setting up the URLSearchBar.

## Requirements
- Requires iOS 7.0 or later

## MIT License

Copyright © 2017 Justin Bush. All rights reserved.

```
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
```
