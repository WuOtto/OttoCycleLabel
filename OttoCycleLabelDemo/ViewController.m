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
#define MainHeight [UIScreen mainScreen].bounds.size.height


@interface ViewController ()

@property (nonatomic,copy) NSArray *dataArr;

@property (nonatomic,strong) OttoCycleLabel *navLabel;
@property (nonatomic,strong) OttoCycleLabel *bottomLabel;
@property (nonatomic,strong) OttoCycleLabel *leftLabel;
@property (nonatomic,strong) OttoCycleLabel *rightLabel;

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
    
    UIButton *startBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    startBtn.frame = CGRectMake((MainWidth - 300) / 2.0, MainHeight - 150, 300, 30);
    [startBtn setTitle:@"Start" forState:UIControlStateNormal];
    [startBtn setBackgroundColor:[UIColor colorWithRed:29/255.0 green:173/255.0 blue:235/255.0 alpha:1]];
    [startBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [startBtn addTarget:self action:@selector(start) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:startBtn];
    
    UIButton *stopBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    stopBtn.frame = CGRectMake((MainWidth - 300) / 2.0, MainHeight - 100, 300, 30);
    [stopBtn setTitle:@"Stop" forState:UIControlStateNormal];
    [stopBtn setBackgroundColor:[UIColor colorWithRed:29/255.0 green:173/255.0 blue:235/255.0 alpha:1]];
    [stopBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [stopBtn addTarget:self action:@selector(stop) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:stopBtn];
    
}

- (void)start{
    [self.navLabel startCycling];
    [self.bottomLabel startCycling];
    [self.leftLabel startCycling];
    [self.rightLabel startCycling];
}

- (void)stop{
    [self.navLabel stopCycling];
    [self.bottomLabel stopCycling];
    [self.leftLabel stopCycling];
    [self.rightLabel stopCycling];
}

- (void)setNavTitleCycleLabel{
    self.navLabel = [[OttoCycleLabel alloc] initWithFrame:CGRectMake(0, 0, MainWidth, 20)
                                                    texts:_dataArr];
    self.navLabel.center = CGPointMake(self.view.frame.size.width * 0.5, self.view.frame.size.height * 0.5);
    self.navLabel.timeInterval = 0.5;
    self.navLabel.backgroundColor = [UIColor clearColor];
    self.navLabel.directionMode = DirectionTransitionFromTop;
    self.navLabel.textAlignment = NSTextAlignmentCenter;
    self.navLabel.font = [UIFont systemFontOfSize:12 weight:UIFontWeightHeavy];
    self.navLabel.textColor = [UIColor colorWithRed:0.5 green:0.5 blue:1 alpha:1];
    
    self.navigationItem.titleView = self.navLabel;
    [self.navLabel startCycling];
}

- (void)showDirectionTransitionFromBottom{
    self.bottomLabel = [[OttoCycleLabel alloc] initWithFrame:CGRectMake(0, 100, MainWidth, 20) texts:_dataArr];
    self.bottomLabel.timeInterval = 0.5;
    self.bottomLabel.backgroundColor = [UIColor clearColor];
    self.bottomLabel.directionMode = DirectionTransitionFromBottom;
    self.bottomLabel.textAlignment = NSTextAlignmentCenter;
    self.bottomLabel.font = [UIFont systemFontOfSize:12 weight:UIFontWeightHeavy];
    self.bottomLabel.textColor = [UIColor colorWithRed:0.5 green:0.5 blue:1 alpha:1];
    
    [self.view addSubview:self.bottomLabel];
    [self.bottomLabel startCycling];
}

- (void)showDirectionTransitionFromLeft{
    self.leftLabel = [[OttoCycleLabel alloc] initWithFrame:CGRectMake(0, 200, MainWidth, 20) texts:_dataArr];
    self.leftLabel.timeInterval = 0.5;
    self.leftLabel.backgroundColor = [UIColor clearColor];
    self.leftLabel.directionMode = DirectionTransitionFromLeft;
    self.leftLabel.textAlignment = NSTextAlignmentCenter;
    self.leftLabel.font = [UIFont systemFontOfSize:12 weight:UIFontWeightHeavy];
    self.leftLabel.textColor = [UIColor colorWithRed:131/255.0 green:175/255.0 blue:155/255.0 alpha:1];
    
    [self.view addSubview:self.leftLabel];
    [self.leftLabel startCycling];
}

- (void)showDirectionTransitionFromRight{
    self.rightLabel = [[OttoCycleLabel alloc] initWithFrame:CGRectMake(0, 300, MainWidth, 20) texts:_dataArr];
    self.rightLabel.timeInterval = 0.5;
    self.rightLabel.backgroundColor = [UIColor clearColor];
    self.rightLabel.directionMode = DirectionTransitionFromRight;
    self.rightLabel.textAlignment = NSTextAlignmentCenter;
    self.rightLabel.font = [UIFont systemFontOfSize:12 weight:UIFontWeightHeavy];
    self.rightLabel.textColor = [UIColor colorWithRed:0.5 green:0.5 blue:1 alpha:1];
    [self.view addSubview:self.rightLabel];
    [self.rightLabel startCycling];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
