//
//  LoginController.m
//  hybrid_sample_ios
//
//  Created by xdf on 2/25/15.
//  Copyright (c) 2015 xdf. All rights reserved.
//

#import "LoginController.h"
#import "WebviewController.h"

@interface LoginController ()

@end

@implementation LoginController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initView];
}

- (void)initView {
    [self setNavigationBar];
    [self setLoginMsg];
}

- (void)setNavigationBar {
    self.navigationItem.title = @"Login";
    self.navigationItem.hidesBackButton = YES;
}

- (void)gotoWebview {
    WebviewController *webviewView=[[WebviewController alloc]init];
    [self.navigationController pushViewController:webviewView animated:YES];
}

- (void)setLoginMsg {
    NSInteger defaultPaddingTop = 80;
    NSInteger defaultPaddingLeft = 10;
    NSInteger labelWidth = 80;
    self.nameLabel = [[UILabel alloc]initWithFrame:CGRectMake(defaultPaddingLeft, defaultPaddingTop + 5, labelWidth, 37)];
    self.nameLabel.font = [UIFont systemFontOfSize:15];
    self.nameLabel.text = @"Username:";
    self.nameLabel.backgroundColor = [UIColor clearColor];
    self.nameLabel.textAlignment = NSTextAlignmentLeft;
    [self.view addSubview: self.nameLabel];
    self.passwordLabel = [[UILabel alloc]initWithFrame:CGRectMake(defaultPaddingLeft, defaultPaddingTop + 55, labelWidth, 37)];
    self.passwordLabel.font = [UIFont systemFontOfSize:15];
    self.passwordLabel.text = @"Password:";
    self.passwordLabel.backgroundColor = [UIColor clearColor];
    self.passwordLabel.textAlignment = NSTextAlignmentLeft;
    [self.view addSubview: self.passwordLabel];
    self.nameTextField = [[UITextField alloc]initWithFrame:CGRectMake(defaultPaddingLeft + labelWidth, defaultPaddingTop + 10, 210, 30)];
    self.nameTextField.placeholder = @"Please input user name";
    self.nameTextField.tag = 1;
    [self.nameTextField setSecureTextEntry:NO];
    self.nameTextField.font = [UIFont systemFontOfSize:14];
    self.nameTextField.delegate = self;
    self.nameTextField.backgroundColor = [UIColor clearColor];
    self.nameTextField.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview: self.nameTextField];
    self.passwordTextField = [[UITextField alloc]initWithFrame:CGRectMake(defaultPaddingLeft + labelWidth, defaultPaddingTop + 60, 210, 30)];
    self.passwordTextField.placeholder = @"Please input password";
    self.passwordTextField.tag = 1;
    [self.passwordTextField setSecureTextEntry:NO];
    self.passwordTextField.font = [UIFont systemFontOfSize:14];
    self.passwordTextField.delegate = self;
    self.passwordTextField.backgroundColor = [UIColor clearColor];
    self.passwordTextField.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview: self.passwordTextField];
    self.confirmButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.confirmButton.frame = CGRectMake((self.view.frame.size.width - 100) / 2, defaultPaddingTop + 140, 100, 40);
    [self.confirmButton setTitle:@"login" forState:UIControlStateNormal];
    self.confirmButton.backgroundColor = [UIColor grayColor];
    self.confirmButton.tintColor = [UIColor whiteColor];
    [self.confirmButton addTarget:self action:@selector(confirmValidate) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview: self.confirmButton];
}

- (void)confirmValidate {
    if (![self.nameTextField.text isEqual: @"test"]) {
        return NSLog(@"user name is not correct");
    }
    if (![self.passwordTextField.text isEqual: @"123456"]) {
        return NSLog(@"password is not correct");
    }
    [self gotoWebview];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
