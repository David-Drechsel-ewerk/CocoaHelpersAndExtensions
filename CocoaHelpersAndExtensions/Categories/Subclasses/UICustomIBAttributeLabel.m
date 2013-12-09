//
//  UICustomIBAttributeLabel.m
//  CocoaHelpersAndExtensions
//
//  Created by David Drechsel on 09.12.13.
//  Copyright (c) 2013 David Drechsel. All rights reserved.
//

#import "UICustomIBAttributeLabel.h"

@implementation UICustomIBAttributeLabel

-(void) setValue:(id)value forKey:(NSString *)key
{
  if ([key isEqualToString:@"fontName"])
  {
    self.font = [UIFont fontWithName:value size:self.font.pointSize];
  }
}

@end
