//
//  CustomTableViewCell.m
//  miSearch
//
//  Created by tianjianxun on 2017/5/15.
//  Copyright © 2017年 xuxuezheng. All rights reserved.
//

#import "CustomTableViewCell.h"
#import "UIImageView+WebCache.h"
@interface CustomTableViewCell()
@property (weak, nonatomic) IBOutlet UIImageView *UserHeader;
@property (weak, nonatomic) IBOutlet UILabel *UesrName;
@property (weak, nonatomic) IBOutlet UILabel *UserLoveLanguage;

@end
@implementation CustomTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
}
-(void)setModel:(GitHubUserDataModel *)model{

   [_UserHeader sd_setImageWithURL:[NSURL URLWithString:model.owner.avatar_url ] placeholderImage: [UIImage imageNamed:@"3"]];
    _UesrName.text = model.name;
     _UserLoveLanguage.text = model.language;
}
+(instancetype)cellwithTableView:(UITableView *)tableView{

    static NSString *identifer = @"ID";
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifer];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle]loadNibNamed:@"CustomTableViewCell" owner:nil options:nil] firstObject];
    }
    return cell;
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
