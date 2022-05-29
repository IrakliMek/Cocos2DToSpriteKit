//
//  CCActionRepeatForever.m
//  NSMatch3
//
//  Created by MacBook Pro on 06.04.2021.
//

#import "CCActionRepeatForever.h"

@implementation CCActionRepeatForever

+ (SKAction *)actionWithAction:(SKAction *)action
{
    return [SKAction repeatActionForever:action];
}

@end
