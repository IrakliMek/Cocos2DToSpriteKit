//
//  CCActionCardinalSplineTo.m
//  NSMatch3
//
//  Created by MacBook Pro on 19.04.2021.
//

#import "CCActionCardinalSplineTo.h"
#import <SpriteKit/SpriteKit.h>

@implementation CCActionCardinalSplineTo

+ (SKAction *)actionWithDuration:(float)duration points:(CCPointArray *)points tension:(float)tension
{

    NSMutableArray *actions = [NSMutableArray new];

    for (int i = 0; i < points.count; i++) {

        CGPoint point = [points getControlPointAtIndex:i];

        [actions addObject:[SKAction moveTo:CGPointMake(point.x, point.y) duration:duration/points.count]];

    }

    return [SKAction sequence:actions];
}

@end
