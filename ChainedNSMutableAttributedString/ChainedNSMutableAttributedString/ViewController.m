//
//  ViewController.m
//  ChainedNSMutableAttributedString
//
//  Created by xidi on 16/8/2.
//  Copyright © 2016年 xidi. All rights reserved.
//

#import "ViewController.h"
//#import "NSMutableAttributedString+EboAttributedString.h"
//#import "NSString+EboString.h"
//#import "NSMutableParagraphStyle+EboParagraphStyle.h"
#import "EboStringHeader.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 添加测试Label
    UILabel * testlabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 50, 200, 200)];
    testlabel.backgroundColor = [UIColor lightGrayColor];
    testlabel.numberOfLines = 0;
    [self.view addSubview:testlabel];
    
 
    // 生成attributedString
    NSString * eboString = @"sflskdfsasfs啊；时间快疯了；啊风景啊说；可怜的风景啊说的法律框架；啊说的风景dfsd sad 弗拉索夫的就是对方slfsdkf";
    NSMutableParagraphStyle * paragraph = EboParagraph().eboLineSpacing(40).eboLineBreakMode(NSLineBreakByTruncatingTail);
    testlabel.attributedText = eboString.attributedString.color([UIColor redColor], EboRangeMake(0, 3)).font([UIFont systemFontOfSize:20], nil).paragraphStyle(paragraph, nil);
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
