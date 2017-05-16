//
//  Manager.m
//  微盘
//
//  Created by tianjianxun on 2016/12/12.
//  Copyright © 2016年 tianjianxun. All rights reserved.
//

#import "Manager.h"

@implementation Manager
+(AFHTTPSessionManager *)sharedHTTPSession{
    
    static AFHTTPSessionManager *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [AFHTTPSessionManager manager];
        manager.responseSerializer = [AFHTTPResponseSerializer serializer];
        
        [manager.requestSerializer willChangeValueForKey:@"timeoutInterval"];
        manager.requestSerializer.timeoutInterval = 10.f;
        [manager.requestSerializer didChangeValueForKey:@"timeoutInterval"];
        
        
    });
    return manager;
}
@end
