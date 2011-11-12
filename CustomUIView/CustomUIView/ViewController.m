//
//  ViewController.m
//  CustomUIView
//
//  Created by Kasajima Yasuo on 11/11/12.
//  Copyright (c) 2011 kyoto. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"viewDidLoad");
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    CGSize winSize = [[UIScreen mainScreen] bounds].size;
    
    CustomView *customView1 = [[CustomView alloc] init];
    [self.view addSubview:customView1.view];
    [customView1 release];
    
    CustomView *customView2 = [[CustomView alloc] init];
    customView2.view.frame = CGRectMake(0, winSize.height/2,winSize.width,100);
    [self.view addSubview:customView2.view];
    [customView2 release];
    
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
