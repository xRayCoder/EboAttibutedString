//
//  NSMutableParagraphStyle+EboParagraphStyle.h
//  ChainedNSMutableAttributedString
//
//  Created by xidi on 16/8/2.
//  Copyright © 2016年 xidi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSMutableParagraphStyle (EboParagraphStyle)

NSMutableParagraphStyle * EboParagraph();

// 行间距
- (NSMutableParagraphStyle * (^)(NSInteger))eboLineSpacing;

// 段间距
- (NSMutableParagraphStyle * (^)(NSInteger))eboParagraphSpacing;

// 设置换行方式
- (NSMutableParagraphStyle * (^)(NSLineBreakMode))eboLineBreakMode;

@end
