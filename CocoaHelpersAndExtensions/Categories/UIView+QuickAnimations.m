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
  [self spinWithDuration:spinTime repeatCount:repeatCount timingFunctionName:nil];
}

-(void)spinWithDuration:(NSTimeInterval)spinTime repeatCount:(float)repeatCount timingFunctionName:(NSString*)timingFunctionName
{
  CAMediaTimingFunction *timingFunction = timingFunctionName ? [CAMediaTimingFunction functionWithName:timingFunctionName] : nil;
  
  CABasicAnimation* rotationAnimation;
  rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
  rotationAnimation.fromValue = [NSNumber numberWithFloat:0.0f];
  rotationAnimation.toValue = [NSNumber numberWithFloat: M_PI * -2.0f];
  rotationAnimation.duration = spinTime;
  rotationAnimation.cumulative = YES;
  rotationAnimation.timingFunction = timingFunction;
  rotationAnimation.repeatCount = repeatCount;
  
  [self.layer addAnimation:rotationAnimation forKey:@"rotationAnimation"];
}

@end
