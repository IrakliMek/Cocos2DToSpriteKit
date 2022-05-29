//
//  CCActionSequence.m
//  NSMatch3
//
//  Created by MacBook Pro on 09.04.2021.
//

#import "CCActionSequence.h"

@implementation CCActionSequence

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

    return (CCActionSequence *)prev;
}

+ (SKAction *)actionOne:(id)actioon1 two:(id)action2
{
    return [SKAction sequence:@[actioon1, action2]];
}

+ (SKAction *)actionWithArray:(NSArray *)actions
{
    return [SKAction sequence:actions];
}

@end
