//
//  UILabel+ZHCommon.h
//  YJHealthDoctor
//
//  Created by xyj on 2017/10/30.
//  Copyright © 2017年 XYJ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (ZHCommon)

/**
 计算文字高度,适用于多行计算
 @param text 文字内容
 @param size 字体大小
 @param maxWidth 文字最大行宽 注意:传的是label.preferredMaxLayoutWidth设置的行宽
 @return 文字高度
 */
+(CGFloat)caculateHeightWithText:(NSString *)text fontSize:(CGFloat)size andMaxWidth:(CGFloat )maxWidth;

/**
 计算字符串的宽度
 
 @param string 要计算的字符串
 
 @param fontSize 字体大小
 @param fontHeight 行高
 @return 返回宽度
 */
+ (CGFloat)calculateRowWidth:(NSString *)string fontSize:(CGFloat)fontSize fontHeight:(CGFloat) fontHeight;

/**
 一段文字中有不同的颜色大小的字体

 @param firstText 从哪一个字体开始
 @param lastText 到哪一个字体结算
 @param changeColor 什么颜色
 @param fontsize 大小
 */
- (void)setColorTextWithFistText:(NSString *)firstText andLastText:(NSString *)lastText andChangeColor:(UIColor *)changeColor andTextFontsize:(CGFloat )fontsize;
@end
