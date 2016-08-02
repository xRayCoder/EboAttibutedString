//
//  NSString+EboString.m
//  ChainedNSMutableAttributedString
//
//  Created by xidi on 16/8/2.
//  Copyright © 2016年 xidi. All rights reserved.
//

#import "NSString+EboString.h"

@implementation NSString (EboString)

- (NSMutableAttributedString *)attributedString {

    return [[NSMutableAttributedString alloc] initWithString:self];
}

@end
