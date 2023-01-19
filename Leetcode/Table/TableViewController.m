//
//  TableViewController.m
//  Leetcode
//
//  Created by 阿栋 on 2023/1/19.
//

#import "TableViewController.h"
#import "Masonry.h"
#import "TitleViewCell.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    self.tabBarController.title = @"做题记录"; // 有效
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view addSubview:self.table];
    [self.table mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.right.bottom.mas_equalTo(self.view);
    }];
    self.table.dataSource=self;
    self.table.delegate = self;
        // mock 列表数据
        NSArray *array=@[@"iphone-1",@"iphone-2",@"iphone-3",@"iphone-4",@"iphone-5",@"iphone-6",@"iphone-7",@"iphone-8",@"iphone-9",@"iphone-10",@"iphone-11",@"iphone-12",@"iphone-13",@"iphone-14",@"iphone-15",@"iphone-16"];
        // 设置可变数组
        self.data= [NSMutableArray arrayWithArray: array];
}

-(UITableView *)table {
    if (!_table) {
        _table = [[UITableView alloc] init];
//        _table.backgroundColor = [UIColor redColor];
    }
    return _table;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    // 从重用池中查找对应的cell
    TitleViewCell *cell = [tableView dequeueReusableCellWithIdentifier: @"ABC"];
    if(cell == nil){
        cell = [[TitleViewCell alloc] init];
    }

//    cell.textLabel.text=self.data[indexPath.row];
//    cell.imageView.image =[UIImage imageNamed: @"iconHeader.png"];
//    cell.detailTextLabel.text=@"我是子标题";
//    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}

// 一组中有多少行
- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.data.count;
}

// 有多少组
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 140;
}


@end
