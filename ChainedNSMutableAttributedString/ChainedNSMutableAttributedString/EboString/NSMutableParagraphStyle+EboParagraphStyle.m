//
//  NSMutableParagraphStyle+EboParagraphStyle.m
//  ChainedNSMutableAttributedString
//
//  Created by xidi on 16/8/2.
//  Copyright © 2016年 xidi. All rights reserved.
//

#import "NSMutableParagraphStyle+EboParagraphStyle.h"

@implementation NSMutableParagraphStyle (EboParagraphStyle)

NSMutableParagraphStyle * EboParagraph() {

    return [[NSMutableParagraphStyle alloc] init];
}

- (NSMutableParagraphStyle *(^)(NSInteger))eboLineSpacing {

    return ^(NSInteger spacing) {
    
        self.lineSpacing = spacing;
        return self;
    };
}

- (NSMutableParagraphStyle *(^)(NSInteger))eboParagraphSpacing {

    return ^(NSInteger spacing){
    
        self.paragraphSpacing = spacing;
        return self;
    };
}

- (NSMutableParagraphStyle *(^)(NSLineBreakMode))eboLineBreakMode {

    return ^(NSLineBreakMode breakMode){
    
        self.lineBreakMode = breakMode;
        return self;
    };
    
}

@end
