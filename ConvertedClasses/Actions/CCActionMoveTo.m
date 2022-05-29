//
//  CCActionMoveTo.m
//  NSMatch3
//
//  Created by MacBook Pro on 03.04.2021.
//

#import "CCActionMoveTo.h"

@implementation CCActionMoveTo

+ (SKAction *)actionWithDuration:(float)duration position:(CGPoint)ccp
{
    return [SKAction moveTo:ccp duration:duration];
}

@end
