//
//  TableViewController.h
//  Leetcode
//
//  Created by 阿栋 on 2023/1/19.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TableViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, strong) UITableView *table;

@property (strong, nonatomic) NSMutableArray *data;

@end

NS_ASSUME_NONNULL_END
