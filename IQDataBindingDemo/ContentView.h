//
//  ContentView.h
//  IQDataBindingDemo
//
//  Created by lobster on 2019/5/4.
//  Copyright © 2019 lobster. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewModel.h"

NS_ASSUME_NONNULL_BEGIN

/*
view视图布局
view与ViewModel数据双向绑定
调用ViewModel提供的用户事件处理接口
*/

@interface ContentView : UIView
@property (nonatomic,strong) ViewModel * viewModel;

@end

NS_ASSUME_NONNULL_END
