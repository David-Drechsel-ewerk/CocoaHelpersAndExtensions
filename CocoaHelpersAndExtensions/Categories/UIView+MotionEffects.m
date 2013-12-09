//
//  UIView+MotionEffects.m
//  HotDogKing
//
//  Created by David Drechsel on 29.11.13.
//  Copyright (c) 2013 EWERK Mobilabs. All rights reserved.
//

#import "UIView+MotionEffects.h"

@implementation UIView (MotionEffects)

-(void)addTranslationMotionEffectWithXOffset:(float)xOffset yOffset:(float)yOffset
{
  UIInterpolatingMotionEffect *heff = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"layer.position.x"
                                                                                      type:UIInterpolatingMotionEffectTypeTiltAlongHorizontalAxis];
  heff.minimumRelativeValue = @((CGFloat) xOffset);
  heff.maximumRelativeValue = @((CGFloat) -xOffset);
  
  UIInterpolatingMotionEffect *veff = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"layer.position.y"
                                                                                      type:UIInterpolatingMotionEffectTypeTiltAlongVerticalAxis];
  veff.minimumRelativeValue = @((CGFloat) yOffset);
  veff.maximumRelativeValue = @((CGFloat) -yOffset);
  
  UIMotionEffectGroup *group = [[UIMotionEffectGroup alloc] init];
  group.motionEffects = @[heff, veff];
  [self addMotionEffect:group];
}

-(void)addRotationMotionEffectWithAngle:(float)angleDegrees
{
  UIInterpolatingMotionEffect *vRotation = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"layer.transform"
                                                                                           type:UIInterpolatingMotionEffectTypeTiltAlongHorizontalAxis];
  
  CATransform3D rotationAndPerspectiveTransform = CATransform3DIdentity;
  rotationAndPerspectiveTransform = CATransform3DRotate(rotationAndPerspectiveTransform, angleDegrees * M_PI / 180.0f, 0.0f, 0.0f, 1.0f);
  
  vRotation.minimumRelativeValue = [NSValue valueWithCATransform3D:rotationAndPerspectiveTransform];
  
  rotationAndPerspectiveTransform = CATransform3DIdentity;
  rotationAndPerspectiveTransform = CATransform3DRotate(rotationAndPerspectiveTransform, -angleDegrees * M_PI / 180.0f, 0.0f, 0.0f, 1.0f);
  
  
  vRotation.maximumRelativeValue = [NSValue valueWithCATransform3D:rotationAndPerspectiveTransform];
  
  [self addMotionEffect:vRotation];
}

@end
