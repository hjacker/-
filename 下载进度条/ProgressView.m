//
//  ProgressView.m
//  下载进度条
//
//  Created by hj_mac on 15/8/25.
//  Copyright (c) 2015年 hj_mac. All rights reserved.
//

#import "ProgressView.h"
@interface ProgressView()
@property (nonatomic,weak)UILabel* label;
@end

@implementation ProgressView

- (UILabel *)label
{
    if(_label == nil)
    {
        UILabel* label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
        [self addSubview:label];
        _label = label;
    }
    return _label;
}

- (void)setProgressVlue:(CGFloat)progressVlue
{
    _progressVlue = progressVlue;
    self.label.textAlignment = NSTextAlignmentCenter;
    self.label.text = [NSString stringWithFormat:@"%.2f%%",_progressVlue*100];
    [self setNeedsDisplay];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void)drawRect:(CGRect)rect
{
    //获得上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    //拼接路径
    CGPoint center = CGPointMake(50, 50);
    CGFloat radius = 48;
    CGFloat startA = -M_PI_2;
    CGFloat endA = -M_PI_2+_progressVlue*M_PI*2;
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:startA endAngle:endA clockwise:YES];
    //把路径添加到上下文
    CGContextAddPath(ctx, path.CGPath);
    //hui
    [path stroke];
    
}

@end
