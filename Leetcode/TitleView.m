//
//  TitleView.m
//  Leetcode
//
//  Created by 阿栋 on 2023/1/18.
//

#import "TitleView.h"
#import "Masonry.h"

@implementation TitleView

- (instancetype) initWithFrame:(CGRect)frame {
    if ([super initWithFrame:frame]) {
        self.backgroundColor = [UIColor whiteColor];
        [self addSubview:self.tagLabel];
        [self addSubview:self.sumLabel];
        [self.tagLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.top.right.mas_equalTo(self);
            make.height.mas_equalTo(self.mas_height).dividedBy(2);
        }];
        [self.sumLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.mas_equalTo(self);
            make.top.mas_equalTo(self.tagLabel.mas_bottom);
            make.height.mas_equalTo(self.mas_height).dividedBy(2);
        }];
    }
    return self;
}

- (UILabel *)tagLabel {
    if (!_tagLabel) {
        _tagLabel = [[UILabel alloc] init];
        [self addSubview:_tagLabel];
    }
    return _tagLabel;
}

- (UILabel *)sumLabel {
    if (!_sumLabel) {
        _sumLabel = [[UILabel alloc] init];
        [self addSubview:_sumLabel];
    }
    return _sumLabel;
}

@end
