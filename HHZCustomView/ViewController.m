//
//  ViewController.m
//  HHZCustomView
//
//  Created by 仁和Mac on 2017/8/21.
//  Copyright © 2017年 陈哲是个好孩子. All rights reserved.
//

#import "ViewController.h"
#import "HHZInputView.h"
#import "HHZTextView.h"

@interface ViewController ()<HHZTextViewDelegate>
@property (nonatomic, strong) HHZTextView * textView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    HHZInputView * vie = [[HHZInputView alloc] init];
    vie.frame = CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 40);
    [vie createInputViewWithTitle:@"手机号码" placeHold:@"请输入手机号码"];
//    [self.view addSubview:vie];
    
    self.textView = [[HHZTextView alloc] initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 200) placeHolder:@"陈哲是个好孩子" isShowWordLabel:YES delegate:self];
    [self.view addSubview:self.textView];
    
    
    self.view.backgroundColor = [UIColor lightGrayColor];
}

-(void)textViewTextDidChanged
{
    [self.textView modifyWordLabelText:[NSString stringWithFormat:@"%lu/200",(unsigned long)self.textView.textView.text.length]];
//    [self.textView modifyWordLabelText:[NSString stringWithFormat:@"sdabhudusavduyaydvas使用啊都是一样的撒的杜萨UI的的大衣 撒sdsadd/200"]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
