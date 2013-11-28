//
//  DDDetailViewController.h
//  CocoaHelpersAndExtensions
//
//  Created by David Drechsel on 28.11.13.
//  Copyright (c) 2013 David Drechsel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DDDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
