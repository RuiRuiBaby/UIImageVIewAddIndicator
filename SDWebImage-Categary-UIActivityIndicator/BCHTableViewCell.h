//
//  BCHTableViewCell.h
//  SDWebImage-Categary-UIActivityIndicator
//
//  Created by Coder_Bai on 16/9/6.
//  Copyright © 2016年 Coder_Bai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BCHTableViewCell : UITableViewCell

@property (nonatomic,copy) NSString *imgString;

+(CGFloat)cellHeight;

+(id)cellWithTableView:(UITableView *)tableView;

@end
