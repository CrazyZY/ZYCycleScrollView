//
//  ZYCycleScrollView.m
//  ZYCycleScrollView
//
//  Created by 张杨 on 2017/1/10.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYCycleScrollView.h"

@interface ZYCycleScrollView ()

@property(nonatomic,strong)UICollectionView *myCollectionView;

@end

@implementation ZYCycleScrollView

#pragma mark - life cycle

- (void)dealloc{
    self.myCollectionView.delegate = nil;
    self.myCollectionView.dataSource = nil;
}

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
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
    //设置横向滑动
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    //设置每个item的大小
    layout.itemSize = CGSizeMake(self.frame.size.width, self.frame.size.height);
    if (!_myCollectionView) {
        _myCollectionView = [[UICollectionView alloc]initWithFrame:CGRectZero collectionViewLayout:layout];
        _myCollectionView.delegate = self;
        _myCollectionView.dataSource = self;
        [self addSubview:_myCollectionView];
    }
    
    if (!_myTimer) {
        _myTimer = [NSTimer scheduledTimerWithTimeInterval:self.timeinterval target:self selector:@selector(timerScroll) userInfo:nil repeats:YES];
    }
    [[NSRunLoop currentRunLoop]addTimer:_myTimer forMode:NSRunLoopCommonModes];
    
}

#pragma mark - UICollectionViewDelegate

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.imgStrArray.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    return nil;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    if (_delegate && [_delegate respondsToSelector:@selector(cycleScrollViewWith:tapIndex:)]) {
        [_delegate cycleScrollViewWith:self tapIndex:indexPath.row];
    }
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
}

#pragma mark - target

- (void)timerScroll{
    
}

- (void)timerFire{
    [_myTimer fire];
}

- (void)timerInvalidate{
    [_myTimer invalidate];
}

@end
