//
//  BCHTableViewCell.m
//  SDWebImage-Categary-UIActivityIndicator
//
//  Created by Coder_Bai on 16/9/6.
//  Copyright © 2016年 Coder_Bai. All rights reserved.
//

#import "BCHTableViewCell.h"
#import "UIImageView+UIActivityIndicator.h"

@interface BCHTableViewCell()

@property (weak, nonatomic) IBOutlet UIImageView *imgView;

@end

@implementation BCHTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.imgView.clipsToBounds = YES;
    self.imgView.layer.cornerRadius = 10;
    self.imgView.layer.masksToBounds = YES;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

+(id)cellWithTableView:(UITableView *)tableView
{
    NSString * className = NSStringFromClass([self class]);
    UINib * nib = [UINib nibWithNibName:className bundle:nil];
    [tableView registerNib:nib forCellReuseIdentifier:className];
    return [tableView dequeueReusableCellWithIdentifier:className];
}

+(CGFloat)cellHeight{
    return 120;
}

-(void)setImgString:(NSString *)imgString{
    _imgString = imgString;
    
//    [self.imgView sd_setImageWithURL:[NSURL URLWithString:encodedString]];

    [self.imgView bch_setImageWithURL:[NSURL URLWithString:_imgString] showActivityIndicatorView:YES];
}

@end
