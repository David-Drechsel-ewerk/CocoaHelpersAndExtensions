//
//  UIBarButtonItem+Convenience.m
//  HotDogKing
//
//  Created by David Drechsel on 05.12.13.
//  Copyright (c) 2013 EWERK Mobilabs. All rights reserved.
//

#import "UIBarButtonItem+Convenience.h"

@implementation UIBarButtonItem (Convenience)

+(UIBarButtonItem*)fixedBarButtonItemWithWidth:(float)width
{
  UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
  item.width = width;
  return item;
}

+(UIBarButtonItem*)flexibleBarButtonItem
{
  UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
  return item;
}

@end
