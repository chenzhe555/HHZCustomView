//
//  HHZTextView.m
//  HHZCustomView
//
//  Created by 仁和Mac on 2017/9/21.
//  Copyright © 2017年 陈哲是个好孩子. All rights reserved.
//

#import "HHZTextView.h"

@interface HHZTextView ()
@property (nonatomic, strong) UILabel * placeHolderLabel;
@property (nonatomic, strong) UILabel * wordLabel;
@end

@implementation HHZTextView

-(instancetype)initWithFrame:(CGRect)frame placeHolder:(NSString *)placeHolder isShowWordLabel:(BOOL)isShowWordLabel delegate:(nonnull id<HHZTextViewDelegate>)delegate
{
    if (self = [super initWithFrame:frame])
    {
        self.backgroundColor = [UIColor whiteColor];
        self.delegate = delegate;
        [self registNotification];
        [self createTextView];
        if (placeHolder.length > 0) self.placeHolder = placeHolder;
        self.isShowWordLabel = isShowWordLabel;
    }
    return self;
}

-(void)configPlaceHolder:(NSString *)placeHolder isShowWordLabel:(BOOL)isShowWordLabel delegate:(id<HHZTextViewDelegate>)delegate
{
    self.backgroundColor = [UIColor whiteColor];
    self.delegate = delegate;
    [self registNotification];
    [self createTextView];
    if (placeHolder.length > 0) self.placeHolder = placeHolder;
    self.isShowWordLabel = isShowWordLabel;
}

#pragma mark 创建视图和注册通知
-(void)createTextView
{
    self.textView = [[UITextView alloc] initWithFrame:CGRectMake(10, 10, self.bounds.size.width - 10*2, self.bounds.size.height - 10*2)];
    [self addSubview:self.textView];
}

-(void)registNotification
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textViewTextDidChanged) name:UITextViewTextDidChangeNotification object:nil];
}

-(void)setPlaceHolder:(NSString *)placeHolder
{
    _placeHolder = placeHolder;
    self.placeHolderLabel.text = _placeHolder;
}


-(UILabel *)placeHolderLabel
{
    if (!_placeHolderLabel)
    {
        _placeHolderLabel = [[UILabel alloc] init];
        _placeHolderLabel.frame = CGRectMake(18, 15, self.bounds.size.width - 15*2, 20);
        _placeHolderLabel.font = [UIFont systemFontOfSize:14.0f];
        _placeHolderLabel.textColor = [UIColor lightGrayColor];
        [self addSubview:_placeHolderLabel];
    }
    return _placeHolderLabel;
}

-(UILabel *)wordLabel
{
    if (!_wordLabel)
    {
        _wordLabel = [[UILabel alloc] init];
        _wordLabel.frame = CGRectMake(0, self.bounds.size.height - 25, self.bounds.size.width - 15, 20);
        _wordLabel.font = [UIFont systemFontOfSize:14];
        _wordLabel.textColor = [UIColor lightGrayColor];
        _wordLabel.textAlignment = NSTextAlignmentRight;
        [self addSubview:_wordLabel];
        
    }
    return _wordLabel;
}

#pragma mark 事件实现
-(void)modifyWordLabelText:(NSString *)labelText
{
    if (_isShowWordLabel) self.wordLabel.text = labelText;
}

-(void)modifyTextViewText:(NSString *)text
{
    self.textView.text = text;
    if (text.length > 0) self.placeHolderLabel.hidden = YES;
    else self.placeHolderLabel.hidden = NO;
}

-(void)textViewTextDidChanged
{
    self.placeHolderLabel.hidden = (self.textView.text.length > 0);
    if (_delegate && [_delegate respondsToSelector:@selector(textViewTextDidChanged)])
    {
        [_delegate textViewTextDidChanged];
    }
}


@end
