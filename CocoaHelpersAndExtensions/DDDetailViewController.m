//
//  DDDetailViewController.m
//  CocoaHelpersAndExtensions
//
//  Created by David Drechsel on 28.11.13.
//  Copyright (c) 2013 David Drechsel. All rights reserved.
//

#import "DDDetailViewController.h"

@interface DDDetailViewController ()
- (void)configureView;
@end

@implementation DDDetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

  if (self.detailItem) {
      self.detailDescriptionLabel.text = [self.detailItem description];
  }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
  [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
