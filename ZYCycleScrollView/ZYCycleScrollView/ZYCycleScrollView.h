//
//  ZYCycleScrollView.h
//  ZYCycleScrollView
//
//  Created by 张杨 on 2017/1/10.
//  Copyright © 2017年 zy. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 无限轮播
 */
@interface ZYCycleScrollView : UIView <UICollectionViewDelegate, UICollectionViewDataSource>


/** 轮播的所有图片 */
@property (nonatomic, strong)NSArray <NSString *> *imgStrArray;
/** 几秒滑动一次，默认为4s */
@property (nonatomic, assign)NSTimeInterval timeinterval;


- (instancetype)initWithFrame:(CGRect)frame;
- (instancetype)initWithFrame:(CGRect)frame withImageStrArray:(NSArray <NSString *>*)imageStrArray;

@end
