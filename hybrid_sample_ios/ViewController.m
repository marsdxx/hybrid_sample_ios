//
//  ViewController.m
//  hybrid_sample_ios
//
//  Created by xdf on 2/25/15.
//  Copyright (c) 2015 xdf. All rights reserved.
//

#import "ViewController.h"
#import "LoginController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initView];
}

- (void)initView {
    [self setNavigationBar];
    [self setTips];
}

- (void)setNavigationBar {
    self.navigationItem.title = @"Welcome";
}

- (void)gotoLogin {
    LoginController *loginView=[[LoginController alloc]init];
    [self.navigationController pushViewController:loginView animated:YES];
}

- (void)setTips {
    self.tipsLabel = [[UILabel alloc]initWithFrame:CGRectMake((self.view.frame.size.width - 200) / 2, (self.view.frame.size.height - 50) / 2 - 50, 200, 50)];
    self.tipsLabel.text = @"Welcome";
    self.tipsLabel.font = [UIFont systemFontOfSize: 24.0];
    self.tipsLabel.backgroundColor = [UIColor clearColor];
    self.tipsLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview: self.tipsLabel];
    self.confirmButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.confirmButton.frame = CGRectMake((self.view.frame.size.width - 100) / 2, (self.view.frame.size.height - 50) / 2 + 100, 100, 40);
    [self.confirmButton setTitle:@"Go" forState:UIControlStateNormal];
    self.confirmButton.backgroundColor = [UIColor grayColor];
    self.confirmButton.tintColor = [UIColor whiteColor];
    [self.confirmButton addTarget:self action:@selector(gotoLogin) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview: self.confirmButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
