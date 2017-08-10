# CycleLabel
循环滚动的label控件
[可自定义设置不同的时间间隔](!http://ouem5hcj9.bkt.clouddn.com/OttoCycleLabelDemo_1.gif)

>
>同样的时间间隔，不同的方向演示如下

![效果演示](http://ouem5hcj9.bkt.clouddn.com/OttoCycleLabelDemo_2.gif)

使用方法
```
//设置label的frame和数据源
OttoCycleLabel *label = [[OttoCycleLabel alloc] initWithFrame:CGRectMake(0, 100, MainWidth, 20) texts:_dataArr];
label.timeInterval = 0.5;//设置滚动的时间间隔
label.backgroundColor = [UIColor clearColor];
label.directionMode = DirectionTransitionFromBottom;//设置滚动模式
label.textAlignment = NSTextAlignmentCenter;
label.font = [UIFont systemFontOfSize:12 weight:UIFontWeightHeavy];
label.textColor = [UIColor colorWithRed:0.5 green:0.5 blue:1 alpha:1];

[self.view addSubview:label];
[label startCycling];//开始滚动
```
