//
//  ViewModel.h
//  IQDataBindingDemo
//
//  Created by ios_LH on 2019/6/6.
//  Copyright © 2019 lobster. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <IQDataBinding/IQDataBinding.h>
#import "Model.h"

NS_ASSUME_NONNULL_BEGIN

/*
 从Model层 获取数据
 同步数据到Model中
 向View层提供接口，其中包括 数据接口(格式化的数据) 以及事件处理接口
 通知View层数据改变。
 业务逻辑
 页面跳转
 */


@interface ViewModel : NSObject
@property (nonatomic,strong) Model * contentModel;

//请求数据
- (void)loadData;

//刷新数据
- (void)reloadData;

//打印
- (void)logDesc;

@end

NS_ASSUME_NONNULL_END
