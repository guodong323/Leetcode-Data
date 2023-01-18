//
//  BaseViewController.m
//  Leetcode
//
//  Created by 阿栋 on 2023/1/10.
//

#import "BaseViewController.h"
#include "Masonry.h"

@interface BaseViewController ()
@property (nonatomic, strong) NSMutableArray *dataSource;
@end

@implementation BaseViewController

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];

    self.tabBarController.title = @"做题数据"; // 有效
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    _dataSource = [NSMutableArray array];
    NSInteger num = 7;
    NSNumber *number = [NSNumber numberWithInt:num];
    [_dataSource addObject:number];
    num = 9;
    number = [NSNumber numberWithInt:num];
    [_dataSource addObject:number];
    num = 9;
    number = [NSNumber numberWithInt:num];
    [_dataSource addObject:number];
    num = 1;
    number = [NSNumber numberWithInt:num];
    [_dataSource addObject:number];
    num = 3;
    number = [NSNumber numberWithInt:num];
    [_dataSource addObject:number];
    num = 14;
    number = [NSNumber numberWithInt:num];
    [_dataSource addObject:number];
    num = 14;
    number = [NSNumber numberWithInt:num];
    [_dataSource addObject:number];
    num = 10;
    number = [NSNumber numberWithInt:num];
    [_dataSource addObject:number];
    num = 3;
    number = [NSNumber numberWithInt:num];
    [_dataSource addObject:number];
    num = 7;
    number = [NSNumber numberWithInt:num];
    [_dataSource addObject:number];
    num = 5;
    number = [NSNumber numberWithInt:num];
    [_dataSource addObject:number];
    num = 1;
    number = [NSNumber numberWithInt:num];
    [_dataSource addObject:number];
    
    [self.lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(100);
        make.left.mas_equalTo(20);
        make.right.mas_equalTo(-20);
        make.height.mas_equalTo(270);
    }];
    [self.lineView.lineChartView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.right.bottom.mas_equalTo(self.lineView);
    }];
    [self.pieView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(400);
        make.left.mas_equalTo(20);
        make.width.mas_equalTo(120);
        make.height.mas_equalTo(120);
    }];
    
    [self.pieView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.pieView1.mas_bottom).mas_offset(20);
        make.left.mas_equalTo(20);
        make.width.mas_equalTo(120);
        make.height.mas_equalTo(120);
    }];
    
    [self.pieView3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.pieView2.mas_bottom).mas_offset(20);
        make.left.mas_equalTo(20);
        make.width.mas_equalTo(120);
        make.height.mas_equalTo(120);
    }];
    
    [self.cardView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(400);
        make.left.mas_equalTo(self.pieView1.mas_right).mas_offset(25);
        make.right.mas_equalTo(self.lineView.mas_right);
        make.height.mas_equalTo(400);
    }];
    
}

- (LineView *)lineView {
    if (!_lineView) {
        _lineView = [[LineView alloc] init];
        _lineView.backgroundColor = [UIColor orangeColor];
        _lineView.layer.cornerRadius = 10;
        _lineView.lineChartView.dataSource = self;
        _lineView.lineChartView.delegate = self;
        [self.view addSubview:_lineView];
    }
    return _lineView;
}

- (CardView *)pieView1 {
    if (!_pieView1) {
        _pieView1 = [[CardView alloc] init];
        _pieView1.backgroundColor = [UIColor blueColor];
        [_pieView1.gaugeView setFilledColor:[UIColor greenColor]];
//        _pieView1.backgroundColor = [UIColor whiteColor];
        [_pieView1.gaugeView refreshGraph:66 withAnimation:YES];
        _pieView1.layer.cornerRadius = 10;
        [self.view addSubview:_pieView1];
    }
    return _pieView1;
}

- (CardView *)pieView2 {
    if (!_pieView2) {
        _pieView2 = [[CardView alloc] init];
        _pieView2.backgroundColor = [UIColor blueColor];
        [_pieView2.gaugeView setFilledColor:[UIColor orangeColor]];
//        _pieView2.backgroundColor = [UIColor redColor];
        [_pieView2.gaugeView refreshGraph:47 withAnimation:YES];
        _pieView2.layer.cornerRadius = 10;
        [self.view addSubview:_pieView2];
    }
    return _pieView2;
}

- (CardView *)pieView3 {
    if (!_pieView3) {
        _pieView3 = [[CardView alloc] init];
        _pieView3.backgroundColor = [UIColor blueColor];
//        [_pieView3.gaugeView setFilledColor:[UIColor redColor]];
        [_pieView3.gaugeView refreshGraph:13 withAnimation:YES];
        _pieView3.layer.cornerRadius = 10;
        [self.view addSubview:_pieView3];
    }
    return _pieView3;
}

- (ListView *)cardView {
    if (!_cardView) {
        _cardView = [[ListView alloc] init];
        _cardView.backgroundColor = [UIColor lightGrayColor];
        _cardView.layer.cornerRadius = 10;
        [self.view addSubview:_cardView];
        [self.cardView.easyView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(10);
            make.left.mas_equalTo(self.cardView).mas_offset(10);
            make.right.mas_equalTo(self.cardView).mas_offset(-10);
            make.height.mas_equalTo(self.cardView.mas_height).dividedBy(3).mas_offset(-20);
        }];
        [self.cardView.midView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.cardView.easyView.mas_bottom).mas_offset(20);
            make.left.mas_equalTo(self.cardView).mas_offset(10);
            make.right.mas_equalTo(self.cardView).mas_offset(-10);
            make.height.mas_equalTo(self.cardView.mas_height).dividedBy(3).mas_offset(-20);
        }];
        [self.cardView.hardView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.cardView.midView.mas_bottom).mas_offset(20);
            make.left.mas_equalTo(self.cardView).mas_offset(10);
            make.right.mas_equalTo(self.cardView).mas_offset(-10);
            make.height.mas_equalTo(self.cardView.mas_height).dividedBy(3).mas_offset(-20);
        }];
    }
    return _cardView;
}

- (NSInteger)numberOfHorizontalDataOfChartView:(ORLineChartView *)chartView {
    return [_dataSource count];
}
- (CGFloat)chartView:(ORLineChartView *)chartView valueForHorizontalAtIndex:(NSInteger)index {
    return [_dataSource[index] doubleValue];
}


@end
