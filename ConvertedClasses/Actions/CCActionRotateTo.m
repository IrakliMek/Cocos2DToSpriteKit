//
//  CCActionRotateTo.m
//  NSMatch3
//
//  Created by MacBook Pro on 08.04.2021.
//

#import "CCActionRotateTo.h"

@implementation CCActionRotateTo

+ (SKAction *)actionWithDuration:(float)duration angle:(float)angle
{
    return [SKAction rotateToAngle:(M_PI/360.0f)*angle duration:duration];
}

@end
