//
//  UILabel+ZHCommon.m
//  YJHealthDoctor
//
//  Created by xyj on 2017/10/30.
//  Copyright © 2017年 XYJ. All rights reserved.
//

#import "UILabel+ZHCommon.h"

@implementation UILabel (ZHCommon)
//计算文字高度,多行计算
+(CGFloat)caculateHeightWithText:(NSString *)text fontSize:(CGFloat)size andMaxWidth:(CGFloat )maxWidth{
    //1.文字的限制尺寸(W H)
    CGSize textSize = CGSizeMake(maxWidth, MAXFLOAT);
    //2.计算出文字的最大高度
    CGFloat textH = [text boundingRectWithSize:textSize options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:size]} context:nil].size.height;
    return textH;
}
//给出行高,字符串,计算字符串宽度
+ (CGFloat)calculateRowWidth:(NSString *)string fontSize:(CGFloat)fontSize fontHeight:(CGFloat) fontHeight{
    //指定字号
    NSDictionary *dic = @{NSFontAttributeName:[UIFont systemFontOfSize:fontSize]};
    /*计算宽度时要确定高度*/
    CGRect rect = [string boundingRectWithSize:CGSizeMake(0, fontHeight) options:NSStringDrawingUsesLineFragmentOrigin |
                   NSStringDrawingUsesFontLeading attributes:dic context:nil];
    return rect.size.width;
}
- (void)setColorTextWithFistText:(NSString *)firstText andLastText:(NSString *)lastText andChangeColor:(UIColor *)changeColor andTextFontsize:(CGFloat )fontsize {
    // 创建Attributed
    NSMutableAttributedString *noteStr = [[NSMutableAttributedString alloc] initWithString:self.text];
    // 需要改变的第一个文字的位置
    NSUInteger firstLoc = [[noteStr string] rangeOfString:firstText].location;
    // 需要改变的最后一个文字的位置
    NSUInteger secondLoc = [[noteStr string] rangeOfString:lastText].location +1;
    // 需要改变的区间
    NSRange range = NSMakeRange(firstLoc, secondLoc - firstLoc);
    // 改变颜色
    [noteStr addAttribute:NSForegroundColorAttributeName value:changeColor range:range];
    // 改变字体大小及类型
//    [noteStr addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"Helvetica-BoldOblique" size:27] range:range];
    //文字大小
    [noteStr addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:fontsize] range:range];

    // 为label添加Attributed
    [self setAttributedText:noteStr];
}
@end
