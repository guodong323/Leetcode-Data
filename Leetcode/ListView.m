//
//  ListView.m
//  Leetcode
//
//  Created by 阿栋 on 2023/1/18.
//

#import "ListView.h"
#import "Masonry.h"

@implementation ListView

- (instancetype) initWithFrame:(CGRect)frame {
    if ([super initWithFrame:frame]) {
//        _easyView.backgroundColor = [UIColor redColor];
        [self addSubview:self.easyView];
        [self addSubview:self.midView];
        [self addSubview:self.hardView];
    }
    return self;
}

- (TitleView *)easyView {
    if (!_easyView) {
        _easyView = [[TitleView alloc] init];
        _easyView.layer.cornerRadius = 10;
        _easyView.tagLabel.text = @"Easy Questions Solved";
        _easyView.sumLabel.text = @"61/617";
        _easyView.tagLabel.textColor = [UIColor greenColor];
        _easyView.sumLabel.textColor = [UIColor greenColor];
    }
    return _easyView;
}

- (TitleView *)midView {
    if (!_midView) {
        _midView = [[TitleView alloc] init];
        _midView.layer.cornerRadius = 10;
        _midView.tagLabel.text = @"Medium Questions Solved";
        _midView.sumLabel.text = @"35/617";
        _midView.tagLabel.textColor = [UIColor orangeColor];
        _midView.sumLabel.textColor = [UIColor orangeColor];
    }
    return _midView;
}

- (TitleView *)hardView {
    if (!_hardView) {
        _hardView = [[TitleView alloc] init];
        _hardView.layer.cornerRadius = 10;
        _hardView.tagLabel.text = @"Hard Questions Solved";
        _hardView.sumLabel.text = @"3/617";
        _hardView.tagLabel.textColor = [UIColor redColor];
        _hardView.sumLabel.textColor = [UIColor redColor];
    }
    return _hardView;
}

@end
