//
//  ViewController.m
//  RadiusView
//
//  Created by 张杨 on 2017/1/11.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property(nonatomic,strong)UIView *radiusView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setupViews];
}


- (void)setupViews{
    _radiusView = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    _radiusView.backgroundColor = [UIColor redColor];
    [self.view addSubview:_radiusView];
    
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:_radiusView.bounds byRoundingCorners:UIRectCornerTopLeft | UIRectCornerTopRight cornerRadii:CGSizeMake(20, 20)];
    CAShapeLayer *shapeLayer = [[CAShapeLayer alloc]init];
    shapeLayer.path = path.CGPath;
    shapeLayer.frame = _radiusView.bounds;
    _radiusView.layer.mask = shapeLayer;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
