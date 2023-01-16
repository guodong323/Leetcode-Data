//
//  LineView.m
//  Leetcode
//
//  Created by 阿栋 on 2023/1/16.
//

#import "LineView.h"

@implementation LineView 

- (instancetype) initWithFrame:(CGRect)frame {
    if ([super initWithFrame:frame]) {
        _lineChartView = [[ORLineChartView alloc] init];
        [self addSubview:_lineChartView];
    }
    return self;
}

@end
