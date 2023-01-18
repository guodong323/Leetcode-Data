//
//  ListView.h
//  Leetcode
//
//  Created by 阿栋 on 2023/1/18.
//

#import <UIKit/UIKit.h>
#import "TitleView.h"

NS_ASSUME_NONNULL_BEGIN

@interface ListView : UIView

@property (nonatomic, strong) TitleView *easyView;

@property (nonatomic, strong) TitleView *midView;

@property (nonatomic, strong) TitleView *hardView;

@end

NS_ASSUME_NONNULL_END
