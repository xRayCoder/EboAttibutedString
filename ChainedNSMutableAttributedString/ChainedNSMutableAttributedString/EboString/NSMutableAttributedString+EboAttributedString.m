//
//  NSMutableAttributedString+EboChainedString.m
//  ChainedNSMutableAttributedString
//
//  Created by xidi on 16/8/2.
//  Copyright © 2016年 xidi. All rights reserved.
//

#import "NSMutableAttributedString+EboAttributedString.h"

@implementation NSMutableAttributedString (EboAttributedString)

- (EboAttributedStringBlockFont)font {

    return ^(UIFont * font, EboRange * range) {
        
        [self ebo_addAttribute:NSFontAttributeName value:font eboRange:range];
        return self;
    };
    
}

- (EboAttributedStringBlockColor)color {

    return ^(UIColor * color, EboRange * range) {
    
        [self ebo_addAttribute:NSForegroundColorAttributeName value:color eboRange:range];
        return self;
    };
}

- (EboAttributedStringBlockParagraph)paragraphStyle {

    return ^(NSMutableParagraphStyle * paragraphStyle, EboRange * range){
    
        [self ebo_addAttribute:NSParagraphStyleAttributeName value:paragraphStyle eboRange:range];
        return self;
    };
}

- (void) ebo_addAttribute:(NSString *)attributeName value:(id)value eboRange:(EboRange *)range {

    if (range) {
        [self addAttribute:attributeName value:value range:NSMakeRange(range.location, range.length)];
    }
    else {
        [self addAttribute:attributeName value:value range:NSMakeRange(0, self.string.length)];
    }
}

@end
