//
//  INDataTool.m
//  KChat
//
//  Created by qiuyaqing on 2016/11/12.
//  Copyright © 2016年 qiuyaqingzeaklink. All rights reserved.
//

#import "INDataTool.h"
#import "AFNetworking.h"
#import "Manager.h"
@implementation INDataTool

+ (void)GETStockApiWithUrl:(NSString *)UrlStirng Parameters:(id)parameters success:(void (^)(id))success failure:(void (^)(NSError *))failure
{
    AFHTTPSessionManager *manger = [Manager sharedHTTPSession];
    manger.responseSerializer = [AFHTTPResponseSerializer serializer];
    [manger GET:UrlStirng parameters:parameters progress:^(NSProgress * _Nonnull downloadProgress) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
                if (success) {
                    success(responseObject);
                }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    }];
}
@end
