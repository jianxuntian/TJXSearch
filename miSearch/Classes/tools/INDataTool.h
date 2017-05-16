//
//  INDataTool.h
//  KChat
//
//  Created by qiuyaqing on 2016/11/12.
//  Copyright © 2016年 qiuyaqingzeaklink. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface INDataTool : NSObject
+ (void)GETStockApiWithUrl:(NSString *)UrlStirng Parameters:(id)parameters success:(void (^)(id))success failure:(void (^)(NSError *))failure;
@end
