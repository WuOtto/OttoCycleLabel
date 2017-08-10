//
//  OttoCycleLabel.h
//  otto
//
//  Created by otto on 2017/2/8.
//  Copyright © 2017年 otto. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, DirectionMode) {
    DirectionTransitionFromTop,     
    DirectionTransitionFromBottom,
    DirectionTransitionFromLeft,
    DirectionTransitionFromRight
};

extern const  NSTimeInterval BeginTime;

@interface OttoCycleLabel : UIView
@property (nonatomic, copy) NSArray *textsArr;
@property (nonatomic, strong) UIColor *textColor;
@property (nonatomic, assign) NSTextAlignment textAlignment;
@property (nonatomic, strong) UIFont *font;
@property (nonatomic, assign) NSTimeInterval timeInterval;
@property (nonatomic,assign) DirectionMode directionMode;

- (instancetype)initWithFrame:(CGRect)frame texts:(NSArray *)textsArr;

- (void)startCycling;
@end
