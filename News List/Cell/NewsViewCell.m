//
//  TableViewCell.m
//  News List
//
//  Created by admin on 15.03.2021.
//

#import "NewsViewCell.h"

@implementation NewsViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (!self) {
        return nil;
    }
    
    _newsDate = [[UILabel alloc] initWithFrame:CGRectMake(10.0, 0.0, [UIScreen mainScreen].bounds.size.width * 0.24, 44.0)];
    _newsDate.textAlignment = NSTextAlignmentLeft;
    [self.contentView addSubview:_newsDate];
    
    _newsTitle = [[UILabel alloc] initWithFrame:CGRectMake(_newsDate.frame.size.width + 10.0, 0.0, [UIScreen mainScreen].bounds.size.width * 0.75, 44.0)];
    _newsTitle.textAlignment = NSTextAlignmentLeft;
    [self.contentView addSubview:_newsTitle];
    
    return self;
};


@end
