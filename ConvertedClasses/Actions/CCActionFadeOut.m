//
//  CCActionFadeOut.m
//  NSMatch3
//
//  Created by MacBook Pro on 12.04.2021.
//

#import "CCActionFadeOut.h"

@implementation CCActionFadeOut

+ (SKAction *)actionWithDuration:(float)duration
{
    return [SKAction fadeOutWithDuration:duration];
}

@end
