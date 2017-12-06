//
//  VerButton.m
//  CustomShareUI
//  
//  Created by chen on 2014/12/6.
//  Copyright (c) 2015年 Gorpeln. All rights reserved.
//

#import "GPVerButton.h"

@implementation GPVerButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        
        _lineView = [[UIView alloc] init];
        _lineView.backgroundColor = [UIColor colorWithRed:0.81f green:0.81f blue:0.81f alpha:1.00f];
        [self addSubview:_lineView];
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    _lineView.frame = CGRectMake(0, self.bounds.size.height-0.5, self.bounds.size.width, 0.5);
}

@end








