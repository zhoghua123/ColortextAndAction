//
//  ViewController.m
//  ZHActionLabelDemo
//
//  Created by mac on 2018/10/30.
//  Copyright © 2018年 coderzhong. All rights reserved.
//

#import "ViewController.h"
#import "UILabel+ZHCommon.h"
#import "UILabel+YBAttributeTextTapAction.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.titleLabel.numberOfLines = 0;
    self.titleLabel.preferredMaxLayoutWidth = UIScreen.mainScreen.bounds.size.width - 60;
    self.titleLabel.text = @"返回原因为《库中无照片，则前端提示“没有获得您的实名信息》，暂无法办理该业务”，点击确定或“x”可关闭弹窗。";
    [self.titleLabel setColorTextWithFistText:@"《" andLastText:@"》" andChangeColor:UIColor.redColor andTextFontsize:14];
    [self.titleLabel yb_addAttributeTapActionWithStrings:@[@"《库中无照片，则前端提示“没有获得您的实名信息》"] tapClicked:^(NSString *string, NSRange range, NSInteger index) {
        NSLog(@"点击了%@",string);
    }];
    
}


@end
