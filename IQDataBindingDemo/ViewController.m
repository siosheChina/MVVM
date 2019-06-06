//
//  ViewController.m
//  IQDataBindingDemo
//
//  Created by lobster on 2019/5/2.
//  Copyright © 2019 lobster. All rights reserved.
//

#import "ViewController.h"
#import "ContentView.h"
#import "ViewModel.h"


//https://blog.csdn.net/linpeng_1/article/details/82316857
//https://github.com/Lobster-King/IQDataBinding

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpSubviews];
}



- (void)setUpSubviews {
    
    ContentView * contentView = [[ContentView alloc]initWithFrame:CGRectMake(100, 80, 200, 500)];
    contentView.center = self.view.center;
    [self.view addSubview:contentView];
    
    ViewModel * viewModel  = [[ViewModel alloc] init];
    contentView.viewModel = viewModel;
    [viewModel loadData];

}





@end
