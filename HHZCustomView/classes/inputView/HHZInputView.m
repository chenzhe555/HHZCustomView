//
//  HHZInputView.m
//  HHZCustomView
//
//  Created by 仁和Mac on 2017/8/21.
//  Copyright © 2017年 陈哲是个好孩子. All rights reserved.
//

#import "HHZInputView.h"

@interface HHZInputView ()

@end

@implementation HHZInputView

-(void)createInputViewWithTitle:(NSString *)title placeHold:(nonnull NSString *)placeHold
{
    self.textLabel = [[UILabel alloc] init];
    self.textLabel.text = title;
    self.textLabel.frame = CGRectMake(20, (self.frame.size.height - 22)/2 - 1, 80, 22);
    self.textLabel.font = [UIFont systemFontOfSize:18.0f];
    [self addSubview:self.textLabel];
    
    self.inputField = [[UITextField alloc] init];
    self.inputField.placeholder = placeHold;
    self.inputField.frame = CGRectMake(self.textLabel.frame.origin.x + self.textLabel.frame.size.width + 10, 0, [UIScreen mainScreen].bounds.size.width - self.textLabel.frame.origin.x - self.textLabel.frame.size.width - 10, self.frame.size.height);
    [self addSubview:self.inputField];
}

@end
