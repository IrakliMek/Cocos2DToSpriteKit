//
//  CCAnimation.m
//  NSMatch3
//
//  Created by MacBook Pro on 15.04.2021.
//

#import "CCAnimation.h"

@implementation CCAnimation

+ (SKAction *)animationWithSpriteFrames:(NSArray *)animationArrray delay:(float)delay
{
    return [SKAction animateWithTextures:animationArrray timePerFrame:delay];
}

@end
