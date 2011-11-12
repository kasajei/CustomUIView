//
//  CustomView.m
//  CustomUIView
//
//  Created by Kasajima Yasuo on 11/11/12.
//  Copyright (c) 2011 kyoto. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

@synthesize view;

-(id)init{
    self = [super init];
    if (self != nil) {
        if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
            [[NSBundle mainBundle] loadNibNamed:@"CustomView" owner:self options:nil];
        }else{
            [[NSBundle mainBundle] loadNibNamed:@"CustomView_ipad" owner:self options:nil];
        }
    }
    return self;
}

-(void)dealloc{
    [super dealloc];
    [view release];
}

@end
