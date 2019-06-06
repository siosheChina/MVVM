//
//  ViewModel.m
//  IQDataBindingDemo
//
//  Created by ios_LH on 2019/6/6.
//  Copyright © 2019 lobster. All rights reserved.
//

#import "ViewModel.h"
#import <IQDataBinding/IQDataBinding.h>
#import "Model.h"

#define DELAYEXECUTE(delayTime,func) (dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayTime * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{func;}))

@interface ViewModel()


@end

@implementation ViewModel

- (instancetype)init
{
    if(self = [super init])
    {
        _contentModel = [[Model alloc]init];
        self.contentModel.title = @"默认文字";
        self.contentModel.content = @"默认";
    }
    return self;
}


- (void)loadData
{
    DELAYEXECUTE(3, {
        self.contentModel.title = @"lobster1";
        self.contentModel.content = @"123456";
    });
 
}


- (void)reloadData
{
    DELAYEXECUTE(3, {
        self.contentModel.title = @"lobster22";
        self.contentModel.content = @"65432122";
    });
    
   
}


- (void)logDesc
{
    NSLog(@"model=%@",self.contentModel.description);
}

@end
