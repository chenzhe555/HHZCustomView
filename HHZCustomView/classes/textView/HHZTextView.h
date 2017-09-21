//
//  HHZTextView.h
//  HHZCustomView
//
//  Created by 仁和Mac on 2017/9/21.
//  Copyright © 2017年 陈哲是个好孩子. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol HHZTextViewDelegate <NSObject>

-(void)textViewTextDidChanged;

@end

@interface HHZTextView : UIView<UITextViewDelegate>
@property (nonatomic, strong) UITextView * textView;
/**
 *  初始化HHZTextView
 *  placeHolder 默认文本信息
 *  isShowWordLabel 是否显示文字字数文本信息
 */
-(instancetype)initWithFrame:(CGRect)frame placeHolder:(NSString * _Nullable)placeHolder isShowWordLabel:(BOOL)isShowWordLabel delegate:(id<HHZTextViewDelegate>)delegate;

/**
 *  自行实现文字个数限制的文本信息 (例如: 23/200)
 */
-(void)modifyWordLabelText:(NSString *)labelText;
@end

NS_ASSUME_NONNULL_END
