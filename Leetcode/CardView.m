//
//  CardView.m
//  Leetcode
//
//  Created by 阿栋 on 2023/1/16.
//

#import "CardView.h"
#import "Masonry.h"

@implementation CardView

- (instancetype) init {
    if ([super init]) {
        self.backgroundColor = [UIColor whiteColor];
        self.gaugeView = [[FlexibleGauge alloc] initWithFrame:CGRectMake(0, 0, 120, 120)];
        [self.gaugeView setDefaultProperties];
//        [self.gaugeView setOuterTextProperties:@"outer 2" textColor:[UIColor greenColor] font:[UIFont fontWithName:@"HelveticaNeue" size:11]];
        [self.gaugeView setOuterImageProperties:[UIImage imageNamed:@"business"] imageSize:CGSizeMake(15, 15)];
        [self.gaugeView setNeedsDisplay];
        [self addSubview:self.gaugeView];
    }
    return self;
}

@end
