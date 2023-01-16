//
//  BaseViewController.h
//  Leetcode
//
//  Created by 阿栋 on 2023/1/10.
//

#import <UIKit/UIKit.h>
#import "CardView.h"
#import "LineView.h"

NS_ASSUME_NONNULL_BEGIN

@interface BaseViewController : UIViewController <ORLineChartViewDelegate,ORLineChartViewDataSource>

@property (nonatomic, strong) CardView *pieView1;

@property (nonatomic, strong) CardView *pieView2;

@property (nonatomic, strong) CardView *pieView3;

@property (nonatomic, strong) LineView *lineView;

@property (nonatomic, strong) UIView *cardView;

@end

NS_ASSUME_NONNULL_END
