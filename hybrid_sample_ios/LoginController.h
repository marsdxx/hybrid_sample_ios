//
//  LoginController.h
//  hybrid_sample_ios
//
//  Created by xdf on 2/25/15.
//  Copyright (c) 2015 xdf. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginController : UIViewController<UITextFieldDelegate, NSURLConnectionDataDelegate>
@property (nonatomic) UILabel *nameLabel;
@property (nonatomic) UILabel *passwordLabel;
@property (nonatomic) UITextField *nameTextField;
@property (nonatomic) UITextField *passwordTextField;
@property (nonatomic) UIButton *confirmButton;
@end