//
//  ContentView.m
//  IQDataBindingDemo
//
//  Created by lobster on 2019/5/4.
//  Copyright © 2019 lobster. All rights reserved.
//

#import "ContentView.h"

@interface ContentView ()<UITextFieldDelegate>

@property (nonatomic, strong) UITextField *loginTextField;
@property (nonatomic, strong) UITextField *pwdTextField;

@end

@implementation ContentView

- (void)dealloc {
    NSLog(@"%s",__func__);
}

- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setUpSubviews];
    }
    return self;
}


- (void)setUpSubviews {
    
    [self addSubview:self.loginTextField];
    [self addSubview:self.pwdTextField];
    
    self.loginTextField.frame = CGRectMake(0, 0, self.bounds.size.width, 30);
    self.pwdTextField.frame = CGRectMake(0, 40, self.bounds.size.width, 30);
    
    
    UIButton *changeButton = [UIButton buttonWithType:UIButtonTypeSystem];
    changeButton.frame = CGRectMake(0, 200, 200, 40);
    [changeButton setTitle:@"refresh" forState:UIControlStateNormal];
    [changeButton addTarget:self action:@selector(refreshButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:changeButton];
    
    
    UIButton * button2 = [UIButton buttonWithType:UIButtonTypeSystem];
    button2.frame = CGRectMake(0, 240, 200, 40);
    [button2 setTitle:@"打印" forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(logDescBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:button2];
    
}


- (void)setViewModel:(ViewModel *)viewModel
{
    _viewModel = viewModel;
    //开始观察、绑定
    [self bindModel:viewModel.contentModel];
    
    //设置绑定具体属性到view
    __weak typeof(self)weakSelf = self;
    self.bind(@"title",^(id value){
        weakSelf.loginTextField.text = value;
    }).bind(@"content",^(id value){
        weakSelf.pwdTextField.text = value;
    });
    
}



- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    
    if (textField.text) {
        //更新变化
        self.update(@"title",textField.text);
    }
    
    return YES;
}

- (UITextField *)loginTextField {
    if (!_loginTextField) {
        _loginTextField = [[UITextField alloc]init];
        _loginTextField.borderStyle = UITextBorderStyleRoundedRect;
        _loginTextField.backgroundColor = [UIColor greenColor];
        _loginTextField.placeholder = @"请输入用户名";
        _loginTextField.delegate = self;
    }
    return _loginTextField;
}

- (UITextField *)pwdTextField {
    if (!_pwdTextField) {
        _pwdTextField = [[UITextField alloc]init];
        _pwdTextField.borderStyle = UITextBorderStyleRoundedRect;
        _pwdTextField.backgroundColor = [UIColor redColor];
        _pwdTextField.placeholder = @"请输入密码";
        _pwdTextField.delegate = self;
    }
    return _pwdTextField;
}




- (void)refreshButtonClicked
{
    [_viewModel reloadData];
    
}

- (void)logDescBtnClick
{
    [_viewModel logDesc];

}


@end
