//
//  GitHubUserDataModel.m
//  miSearch
//
//  Created by tianjianxun on 2017/5/15.
//  Copyright © 2017年 xuxuezheng. All rights reserved.
//

#import "GitHubUserDataModel.h"

@implementation GitHubUserDataModel
+(JSONKeyMapper *)keyMapper
{
    return [[JSONKeyMapper alloc]initWithModelToJSONDictionary:@{@"description":@"Description"}];
}
@end
@implementation Owner

@end
