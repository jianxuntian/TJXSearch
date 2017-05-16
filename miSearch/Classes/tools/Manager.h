//
//  Manager.h
//  微盘
//
//  Created by tianjianxun on 2016/12/12.
//  Copyright © 2016年 tianjianxun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"
#import "AFHTTPSessionManager.h"
@interface Manager : NSObject
+(AFHTTPSessionManager *)sharedHTTPSession;
@end
