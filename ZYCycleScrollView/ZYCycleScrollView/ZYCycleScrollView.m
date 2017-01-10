//
//  ZYCycleScrollView.m
//  ZYCycleScrollView
//
//  Created by 张杨 on 2017/1/10.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYCycleScrollView.h"

@interface ZYCycleScrollView ()

@end

@implementation ZYCycleScrollView

#pragma mark - life cycle
- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupViews];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame withImageStrArray:(NSArray <NSString *>*)imageStrArray{
    return [[ZYCycleScrollView alloc]initWithFrame:frame];
}

- (void)setupViews{
    
}

#pragma mark - UICollectionViewDelegate
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.imgStrArray.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    return nil;
}

@end
