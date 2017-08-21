//
//  ViewController.m
//  HHZCustomView
//
//  Created by 仁和Mac on 2017/8/21.
//  Copyright © 2017年 陈哲是个好孩子. All rights reserved.
//

#import "ViewController.h"
#import "HHZInputView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    HHZInputView * vie = [[HHZInputView alloc] init];
    vie.frame = CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 40);
    [vie createInputViewWithTitle:@"手机号码" placeHold:@"请输入手机号码"];
    [self.view addSubview:vie];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
