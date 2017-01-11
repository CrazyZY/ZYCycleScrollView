//
//  ZYCycleScrollView.h
//  ZYCycleScrollView
//
//  Created by 张杨 on 2017/1/10.
//  Copyright © 2017年 zy. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ZYCycleScrollView;
@protocol ZYCycleScrollViewDelegate <NSObject>

- (void)cycleScrollViewWith:(ZYCycleScrollView *)cycleView tapIndex:(NSInteger)index;

@end

@interface ZYCycleScrollView : UIView <UICollectionViewDelegate, UICollectionViewDataSource>

/** 轮播的所有图片 */
@property (nonatomic, strong)NSArray <NSString *> *imgStrArray;
/** 几秒滑动一次，默认为4s */
@property (nonatomic, assign)NSTimeInterval timeinterval;
/** 点击回调 */
@property (nonatomic, assign)id <ZYCycleScrollViewDelegate> delegate;
/** 定时器 */
@property (nonatomic, strong)NSTimer *myTimer;

- (instancetype)initWithFrame:(CGRect)frame withImageStrArray:(NSArray <NSString *>*)imageStrArray;

@end
