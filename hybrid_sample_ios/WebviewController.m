//
//  WebviewController.m
//  hybrid_sample_ios
//
//  Created by xdf on 2/25/15.
//  Copyright (c) 2015 xdf. All rights reserved.
//

#import "WebviewController.h"

@interface WebviewController ()

@end

@implementation WebviewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initView];
}

- (void)initView {
    [self setNavigationBar];
    [self loadWebview];
}

- (void)setNavigationBar {
    self.navigationItem.title = @"Webview";
    self.navigationItem.hidesBackButton = YES; 
}

- (void)loadWebview {
    self.webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [self.webView setScalesPageToFit:YES];
    [self.webView setDelegate:self];
    [self.view addSubview: self.webView];
    NSString* path = [[NSBundle mainBundle] pathForResource:@"assets/index" ofType:@"html"];
    NSString* html = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    NSURL *baseURL = [NSURL fileURLWithPath:path];
    [self.webView loadHTMLString:html baseURL:baseURL];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
