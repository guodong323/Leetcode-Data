//
//  TitleViewCell.m
//  Leetcode
//
//  Created by 阿栋 on 2023/1/19.
//

#import "TitleViewCell.h"
#import "Masonry.h"

@implementation TitleViewCell

- (instancetype) initWithFrame:(CGRect)frame {
    if ([super initWithFrame:frame]) {
        [self addSubview:self.titleLabel];
        [self addSubview:self.tagLabel];
        [self addSubview:self.timeLabel];
        
        [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(self.mas_left).mas_offset(10);
            make.top.mas_equalTo(self.mas_top).mas_offset(10);
            make.right.mas_equalTo(self.mas_right).mas_offset(-10);
            make.height.mas_equalTo(40);
        }];
        [self.tagLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.titleLabel.mas_bottom).mas_offset(10);
            make.right.mas_equalTo(self.mas_right).mas_offset(-10);
            make.width.mas_equalTo(170);
            make.bottom.mas_equalTo(-10);
        }];
        [self.timeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(self.mas_left).mas_offset(10);
            make.height.mas_equalTo(30);
            make.width.mas_equalTo(120);
            make.bottom.mas_equalTo(-10);
        }];
    }
    return self;
}

- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.text = @"Two Sum";
        _titleLabel.backgroundColor = [UIColor redColor];
    }
    return _titleLabel;
}

- (UILabel *)tagLabel {
    if (!_tagLabel) {
        _tagLabel = [[UILabel alloc] init];
        _tagLabel.text = @"difference-between-element-sum-and-digit-sum-of-an-array";
        _tagLabel.numberOfLines = 0;
        _tagLabel.backgroundColor = [UIColor greenColor];
    }
    return _tagLabel;
}

- (UILabel *)timeLabel {
    if (!_timeLabel) {
        _timeLabel = [[UILabel alloc] init];
        _timeLabel.text = @"2023.01.01";
        _timeLabel.backgroundColor = [UIColor blueColor];
    }
    return _timeLabel;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
