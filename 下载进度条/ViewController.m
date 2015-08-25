//
//  ViewController.m
//  下载进度条
//
//  Created by hj_mac on 15/8/25.
//  Copyright (c) 2015年 hj_mac. All rights reserved.
//

#import "ViewController.h"
#import "ProgressView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet ProgressView *pogressView;

@end

@implementation ViewController
- (IBAction)valueChange:(UISlider *)sender {
    //NSLog(@"%f",sender.value);
    _pogressView.progressVlue = sender.value;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
