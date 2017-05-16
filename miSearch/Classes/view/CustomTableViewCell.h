//
//  CustomTableViewCell.h
//  miSearch
//
//  Created by tianjianxun on 2017/5/15.
//  Copyright © 2017年 xuxuezheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GitHubUserDataModel.h"
@interface CustomTableViewCell : UITableViewCell
+(instancetype)cellwithTableView:(UITableView *)tableView;
@property(nonatomic,strong)GitHubUserDataModel *model;
@end
