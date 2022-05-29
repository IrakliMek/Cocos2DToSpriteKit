//
//  CCActionSpawn.m
//  NSMatch3
//
//  Created by MacBook Pro on 12.04.2021.
//

#import "CCActionSpawn.h"

@implementation CCActionSpawn

+ (SKAction *)actions:(SKAction *)action1, ... {

    va_list args;
    va_start(args, action1);

    id ret = [self actions:action1 vaList:args];

    va_end(args);

    return  ret;
}

+ (instancetype)actions:(SKAction *)action1 vaList:(va_list)args
{
    SKAction *now = nil;
    SKAction *prev = action1;

    while(action1){
        now = va_arg(args, SKAction *);
        if(now){
            prev = [self actionOne:prev two:now];
        } else {
            break;
        }
    }

    return (CCActionSpawn *)prev;
}

+ (SKAction *)actionOne:(SKAction *)action1 two:(SKAction *)action2
{
    return [SKAction group:@[action1, action2]];
}

+ (SKAction *)actionWithArray:(NSArray *)actions
{
    return [SKAction group:actions];
}

@end
