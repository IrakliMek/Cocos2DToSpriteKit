//
//  CCActionDelay.m
//  NSMatch3
//
//  Created by MacBook Pro on 03.04.2021.
//

#import "CCActionDelay.h"

@implementation CCActionDelay

+ (SKAction *)actionWithDuration:(float)duration
{
    return [SKAction waitForDuration:duration];;
}

@end
