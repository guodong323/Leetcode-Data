//
//  BaseViewController.m
//  Leetcode
//
//  Created by 阿栋 on 2023/1/10.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.lineView.frame = CGRectMake(20, 100, self.view.frame.size.width * 6/7, 280);
    self.pieView.frame = CGRectMake(20, 420, self.view.frame.size.width * 2/5, self.view.frame.size.width * 2/5);
    self.cardView.frame = CGRectMake(45 + self.view.frame.size.width * 2/5, 420, self.view.frame.size.width * 3/7, self.view.frame.size.height * 1/2);
    
}

- (UIView *)lineView {
    if (!_lineView) {
        _lineView = [[UIView alloc] init];
        _lineView.backgroundColor = [UIColor orangeColor];
        _lineView.layer.cornerRadius = 10;
        [self.view addSubview:_lineView];
    }
    return _lineView;
}

- (UIView *)pieView {
    if (!_pieView) {
        _pieView = [[UIView alloc] init];
        _pieView.backgroundColor = [UIColor blueColor];
        _pieView.layer.cornerRadius = 10;
        [self.view addSubview:_pieView];
    }
    return _pieView;
}

- (UIView *)cardView {
    if (!_cardView) {
        _cardView = [[UIView alloc] init];
        _cardView.backgroundColor = [UIColor lightGrayColor];
        _cardView.layer.cornerRadius = 10;
        [self.view addSubview:_cardView];
    }
    return _cardView;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
