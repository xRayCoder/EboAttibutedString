//
//  EboRange.h
//  ChainedNSMutableAttributedString
//
//  Created by xidi on 16/8/2.
//  Copyright © 2016年 xidi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EboRange : NSObject

@property (nonatomic) NSInteger location;
@property (nonatomic) NSInteger length;

EboRange * EboRangeMake(NSInteger location, NSInteger length);

- (instancetype) initWithLocation:(NSInteger)location length:(NSInteger)length;

@end
