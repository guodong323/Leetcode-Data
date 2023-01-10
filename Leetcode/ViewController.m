//
//  ViewController.m
//  Leetcode
//
//  Created by 阿栋 on 2023/1/9.
//

#import "ViewController.h"
#import "FlexibleGauge.h"

@interface ViewController ()
@property(strong, nonatomic) FlexibleGauge *gauge;
@property(strong, nonatomic) UIView *background;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _background = [[UIView alloc] initWithFrame:CGRectMake(0,0,self.view.frame.size.width,self.view.frame.size.height)];
    _background.backgroundColor = [UIColor blueColor];
    [self.view addSubview:_background];
    // Do any additional setup after loading the view.
    
    self.gauge = [[FlexibleGauge alloc] initWithFrame:CGRectMake(100, 0, self.view.frame.size.width/2, self.view.frame.size.width/2)];
    [self.gauge setDefaultProperties];
    [self.gauge setOuterTextProperties:@"outer 2" textColor:[UIColor darkGrayColor] font:[UIFont fontWithName:@"HelveticaNeue" size:11]];
    [self.gauge setOuterImageProperties:[UIImage imageNamed:@"business"] imageSize:CGSizeMake(15, 15)];
    [self.gauge setNeedsDisplay];
    [self.background addSubview:self.gauge];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(300, 300, 50, 50)];
    [btn addTarget:self action:@selector(jump) forControlEvents:UIControlEventTouchUpInside];
    btn.backgroundColor = [UIColor redColor];
    [btn setTitle:@"跳转" forState:UIControlStateNormal];
    [self.view addSubview:btn];
}

- (void)jump {
    _dataVC = [[BaseViewController alloc] init];
    NSLog(@"11111");
    [self.navigationController pushViewController:_dataVC animated:true];

}


@end
