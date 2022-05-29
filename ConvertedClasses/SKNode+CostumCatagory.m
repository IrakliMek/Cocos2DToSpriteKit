//
//  SKNode+CostumCatagory.m
//  NSMatch3
//
//  Created by MacBook Pro on 12.04.2021.
//

#import "SKNode+CostumCatagory.h"

@implementation SKNode (CostumCatagory)

- (void)addChild:(SKNode *)node z:(float)z
{
    [node setZPosition:z];
    [self addChild:node];
}

- (void)addChild:(SKNode *)node z:(float)z name:(NSString *)name
{
    [node setName:name];
    [node setZPosition:z];
    [self addChild:node];
}

- (void)removeFromParentAndCleanup:(BOOL)state
{
    [self removeFromParent];
}

- (SKNode *)getChildByName:(NSString *)name recursively:(BOOL)state
{
    return [self childNodeWithName:name];
}

- (void)removeChildByName:(NSString *)name cleanup:(BOOL)cleanupState
{
    SKNode *node = [self childNodeWithName:name];
    [node removeFromParent];
}

- (void)removeChild:(SKNode *)node cleanup:(BOOL)cleanupState
{
    [node removeFromParent];
}

- (void)setScaleFactor:(float)scaleFactor setScale:(float)scale
{
    [self setScale:scale*scaleFactor];
}

@end
