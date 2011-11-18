//
//  CustomUIView.m
//  CustomView
//
//  Created by Kasajima Yasuo on 11/11/18.
//  Copyright (c) 2011 kyoto. All rights reserved.
//

#import "CustomUIView.h"

@implementation CustomUIView

@synthesize view;

- (void)awakeFromNib{
    [[NSBundle mainBundle] loadNibNamed:@"CustomUIView" owner:self options:nil];
    [self addSubview:view];
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self awakeFromNib];
    }
    return self;
}

- (void)dealloc{
    [super dealloc];
    [view release];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
