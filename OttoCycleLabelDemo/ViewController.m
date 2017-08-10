//
//  ViewController.m
//  OttoCycleLabelDemo
//
//  Created by otto on 2017/8/10.
//  Copyright © 2017年 otto. All rights reserved.
//

#import "ViewController.h"
#import "OttoCycleLabel.h"

#define MainWidth [UIScreen mainScreen].bounds.size.width

@interface ViewController ()
{
    NSArray *_dataArr;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    _dataArr = @[
                 @"一个循环label",
                 @"六大网盘将关停",
                 @"西欧半数男生是1人后裔",
                 @"黑心免税店专宰中国人",
                 @"老人组团赴美唱红歌",
                 @"立案调查百度推广涉广告"
                 ];
    [self setNavTitleCycleLabel];
    [self showDirectionTransitionFromBottom];
    [self showDirectionTransitionFromLeft];
    [self showDirectionTransitionFromRight];
    
}

- (void)setNavTitleCycleLabel{
    OttoCycleLabel *label = [[OttoCycleLabel alloc] initWithFrame:CGRectMake(0, 0, MainWidth, 20)
                                                            texts:_dataArr];
    label.center = CGPointMake(self.view.frame.size.width * 0.5, self.view.frame.size.height * 0.5);
    label.timeInterval = 0.5;
    label.backgroundColor = [UIColor clearColor];
    label.directionMode = DirectionTransitionFromTop;
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont systemFontOfSize:12 weight:UIFontWeightHeavy];
    label.textColor = [UIColor colorWithRed:0.5 green:0.5 blue:1 alpha:1];
    
    self.navigationItem.titleView = label;
    [label startCycling];
}

- (void)showDirectionTransitionFromBottom{
    OttoCycleLabel *label = [[OttoCycleLabel alloc] initWithFrame:CGRectMake(0, 100, MainWidth, 20) texts:_dataArr];
    label.timeInterval = 0.5;
    label.backgroundColor = [UIColor clearColor];
    label.directionMode = DirectionTransitionFromBottom;
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont systemFontOfSize:12 weight:UIFontWeightHeavy];
    label.textColor = [UIColor colorWithRed:0.5 green:0.5 blue:1 alpha:1];
    
    [self.view addSubview:label];
    [label startCycling];
}

- (void)showDirectionTransitionFromLeft{
    OttoCycleLabel *label = [[OttoCycleLabel alloc] initWithFrame:CGRectMake(0, 200, MainWidth, 20) texts:_dataArr];
    label.timeInterval = 0.5;
    label.backgroundColor = [UIColor clearColor];
    label.directionMode = DirectionTransitionFromLeft;
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont systemFontOfSize:12 weight:UIFontWeightHeavy];
    label.textColor = [UIColor colorWithRed:131/255.0 green:175/255.0 blue:155/255.0 alpha:1];
    
    [self.view addSubview:label];
    [label startCycling];
}

- (void)showDirectionTransitionFromRight{
    OttoCycleLabel *cycleLabelRight = [[OttoCycleLabel alloc] initWithFrame:CGRectMake(0, 300, MainWidth, 20) texts:_dataArr];
    cycleLabelRight.timeInterval = 0.5;
    cycleLabelRight.backgroundColor = [UIColor clearColor];
    cycleLabelRight.directionMode = DirectionTransitionFromRight;
    cycleLabelRight.textAlignment = NSTextAlignmentCenter;
    cycleLabelRight.font = [UIFont systemFontOfSize:12 weight:UIFontWeightHeavy];
    cycleLabelRight.textColor = [UIColor colorWithRed:0.5 green:0.5 blue:1 alpha:1];
    [self.view addSubview:cycleLabelRight];
    [cycleLabelRight startCycling];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
