//
//  HHZInputView.h
//  HHZCustomView
//
//  Created by 仁和Mac on 2017/8/21.
//  Copyright © 2017年 陈哲是个好孩子. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HHZInputView : UIView
/**
 *  左边的文本
 */
@property (nonatomic, strong) UILabel * textLabel;
/**
 *  右边的输入框
 */
@property (nonatomic, strong) UITextField * inputField;
-(void)createInputViewWithTitle:(NSString *)title placeHold:(NSString *)placeHold;
@end

NS_ASSUME_NONNULL_END
