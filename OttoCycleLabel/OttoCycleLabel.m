//
//  OttoCycleLabel.m
//  otto
//
//  Created by otto on 2017/2/8.
//  Copyright © 2017年 otto. All rights reserved.
//

#import "OttoCycleLabel.h"

const NSTimeInterval BeginTime = 1.0;

@interface OttoCycleLabel ()
{
    UILabel         *_label;
    NSInteger       _index;
    NSTimeInterval  _interval;
}
@end

@implementation OttoCycleLabel

@synthesize textsArr = _textsArr;
@synthesize textColor = _textColor;
@synthesize font = _font;
@synthesize textAlignment = _textAlignment;
@synthesize timeInterval = _timeInterval;

- (instancetype)initWithFrame:(CGRect)frame texts:(NSArray *)textsArr
{
    if (self = [super initWithFrame:frame]) {
        [self initWithTexts:textsArr];
    }
    return self;
}

- (void)initWithTexts:(NSArray *)textsArr
{
    self.clipsToBounds = true;
    _label = [[UILabel alloc] initWithFrame:self.bounds];
    _label.backgroundColor = [UIColor clearColor];
    
    [self addSubview:_label];
    
    _index = 0;
    
    _label.text = _textsArr[0];
    self.font = [UIFont systemFontOfSize:self.frame.size.height * 0.5];
    self.textColor = [UIColor blackColor];
    self.textAlignment = NSTextAlignmentCenter;
    self.textsArr = textsArr;
    self.timeInterval = 3;
}

- (void)startCycling
{
    if (_index == _textsArr.count) {
        _index = 0;
    }
    
    CATransition *animation = [CATransition animation];
    animation.duration = 0.5;
    animation.type = @"cube";
    switch (self.directionMode) {
        case DirectionTransitionFromTop:
        {
            animation.subtype = kCATransitionFromTop;
        }
            break;
        case DirectionTransitionFromBottom:
        {
            animation.subtype = kCATransitionFromBottom;
        }
            break;
        case DirectionTransitionFromLeft:
        {
            animation.subtype = kCATransitionFromLeft;
        }
            break;
        case DirectionTransitionFromRight:
        {
            animation.subtype = kCATransitionFromRight;
        }
            break;
        default:
            break;
    }
    [_label.layer addAnimation:animation forKey:@"animation"];
    
    [UIView animateWithDuration:0.5 animations:^{ _label.text = _textsArr[_index]; }];
    _index += 1;
    [self performSelector:@selector(startCycling) withObject:nil afterDelay:_interval];
}


#pragma mark - setter
- (void)setTimeInterval:(NSTimeInterval)timeInterval {
    _timeInterval = timeInterval;
    _interval = BeginTime + _timeInterval;
}

- (void)setTextColor:(UIColor *)textColor {
    _textColor = textColor;
    _label.textColor = _textColor;
}
- (void)setTextAlignment:(NSTextAlignment)textAlignment {
    _textAlignment = textAlignment;
    _label.textAlignment = _textAlignment;
}
- (void)setFont:(UIFont *)font {
    _font = font;
    _label.font = _font;
}

#pragma mark - getter

- (UIColor *)textColor {
    return _label.textColor;
}
- (NSTextAlignment)textAlignment {
    return _label.textAlignment;
}
- (UIFont *)font {
    return _label.font;
}
- (NSTimeInterval)timeInterval {
    return _interval - BeginTime;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
