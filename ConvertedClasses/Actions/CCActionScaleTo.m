//
//  CCActionScaleTo.m
//  NSMatch3
//
//  Created by MacBook Pro on 03.04.2021.
//

#import "CCActionScaleTo.h"
#import "SMSizeConfig.h"

@implementation CCActionScaleTo

+ (SKAction *)actionWithDuration:(float)duration scale:(float)scale
{
    return [SKAction scaleTo:scale*deviceScaleSize duration:duration];
}

+ (SKAction *)actionWithDuration:(float)duration scaleX:(float)scaleX scaleY:(float)scaleY
{
    return [SKAction scaleXTo:scaleX*deviceScaleSize y:scaleY*deviceScaleSize duration:duration];
}

@end
