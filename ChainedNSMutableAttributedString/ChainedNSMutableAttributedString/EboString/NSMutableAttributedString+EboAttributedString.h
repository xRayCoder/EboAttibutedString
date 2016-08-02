//
//  NSMutableAttributedString+EboChainedString.h
//  ChainedNSMutableAttributedString
//
//  Created by xidi on 16/8/2.
//  Copyright © 2016年 xidi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "EboRange.h"

typedef NSMutableAttributedString *(^EboAttributedStringBlockFont)(UIFont * font, EboRange * range);
typedef NSMutableAttributedString *(^EboAttributedStringBlockColor)(UIColor * color, EboRange * range);
typedef NSMutableAttributedString *(^EboAttributedStringBlockParagraph)(NSMutableParagraphStyle * paragraphStyle, EboRange * range);

@interface NSMutableAttributedString (EboAttributedString)


- (EboAttributedStringBlockFont) font;

- (EboAttributedStringBlockColor) color;

- (EboAttributedStringBlockParagraph) paragraphStyle;

@end
