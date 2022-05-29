//
//  CCPhysicsBody.m
//  NSMatch3
//
//  Created by MacBook Pro on 12.04.2021.
//

#import "CCPhysicsBody.h"

@implementation CCPhysicsBody

+ (SKPhysicsBody *)bodyWithCircleOfRadius:(float)radius andCenter:(CGPoint)point
{
    return [SKPhysicsBody bodyWithCircleOfRadius:radius center:point];
}

@end
