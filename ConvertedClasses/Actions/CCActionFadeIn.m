//
//  CCActionFadeIn.m
//  NSMatch3
//
//  Created by MacBook Pro on 12.04.2021.
//

#import "CCActionFadeIn.h"

@implementation CCActionFadeIn

+ (SKAction *)actionWithDuration:(float)duration
{
    return [SKAction fadeInWithDuration:duration];
}

@end
