//
//  UIView+QuickAnimations.m
//  HotDogKing
//
//  Created by David Drechsel on 02.12.13.
//  Copyright (c) 2013 EWERK Mobilabs. All rights reserved.
//

#import "UIView+QuickAnimations.h"

@implementation UIView (QuickAnimations)

-(void)spinWithDuration:(NSTimeInterval)spinTime repeatCount:(float)repeatCount
{
  CATransform3D rotationTransform = CATransform3DMakeRotation(1.0f * M_PI, 0, 0, 1.0);
  CABasicAnimation* rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform"];
  
  rotationAnimation.toValue = [NSValue valueWithCATransform3D:rotationTransform];
  rotationAnimation.duration = spinTime/2.0f;
  rotationAnimation.cumulative = YES;
  rotationAnimation.repeatCount = repeatCount*2.0f;
  
  [self.layer addAnimation:rotationAnimation forKey:@"rotationAnimation"];
}

@end
