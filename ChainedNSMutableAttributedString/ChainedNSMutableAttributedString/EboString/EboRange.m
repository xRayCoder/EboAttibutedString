//
//  EboRange.m
//  ChainedNSMutableAttributedString
//
//  Created by xidi on 16/8/2.
//  Copyright © 2016年 xidi. All rights reserved.
//

#import "EboRange.h"

@implementation EboRange

- (instancetype)initWithLocation:(NSInteger)location length:(NSInteger)length {

    self = [super init];
    if (self) {
        _location = location;
        _length = length;
    }
    return self;
}

EboRange * EboRangeMake(NSInteger location, NSInteger length) {
    
    return [[EboRange alloc] initWithLocation:location length:length];
}

@end
