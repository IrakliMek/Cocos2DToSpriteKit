//
//  CCActionRepeat.m
//  NSMatch3
//
//  Created by MacBook Pro on 09.04.2021.
//

#import "CCActionRepeat.h"

@implementation CCActionRepeat

+ (SKAction *)actionWithAction:(id)action times:(int)times
{
    return [SKAction repeatAction:action count:times];
}

@end
