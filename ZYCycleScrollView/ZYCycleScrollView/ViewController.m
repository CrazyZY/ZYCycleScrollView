//
//  ViewController.m
//  ZYCycleScrollView
//
//  Created by 张杨 on 2017/1/10.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property(nonatomic,strong)UITableView *myTableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor redColor];
    [self setupviews];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupviews{
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(100, 50, 90, 20)];
    label.backgroundColor = [UIColor redColor];
    label.text = @"label";
    [self.view addSubview:label];
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundColor:[UIColor redColor]];
    
}


@end
