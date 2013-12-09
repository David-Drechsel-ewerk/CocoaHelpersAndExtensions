//
//  UIView+MotionEffects.h
//  HotDogKing
//
//  Created by David Drechsel on 29.11.13.
//  Copyright (c) 2013 EWERK Mobilabs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (MotionEffects)

-(void)addTranslationMotionEffectWithXOffset:(float)xOffset yOffset:(float)yOffset;
-(void)addRotationMotionEffectWithAngle:(float)angleDegrees;

@end
