//
//  ContentModel.m
//  IQDataBindingDemo
//
//  Created by lobster on 2019/5/2.
//  Copyright © 2019 lobster. All rights reserved.
//

#import "Model.h"

@implementation Model

- (void)dealloc {
    NSLog(@"%s",__func__);
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"title =%@,content=%@",_title,_content];
}




@end
