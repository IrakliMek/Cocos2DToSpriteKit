//
//  SKNode+CostumCatagory.h
//  NSMatch3
//
//  Created by MacBook Pro on 12.04.2021.
//

#import <SpriteKit/SpriteKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SKNode (CostumCatagory)

- (void)addChild:(SKNode *)node z:(float)z;

- (void)addChild:(SKNode *)node z:(float)z name:(NSString *)name;

- (void)removeFromParentAndCleanup:(BOOL)state;

- (SKNode *)getChildByName:(NSString *)name recursively:(BOOL)state;

- (void)removeChildByName:(NSString *)name cleanup:(BOOL)cleanupState;

- (void)removeChild:(SKNode *)node cleanup:(BOOL)cleanupState;

- (void)setScaleFactor:(float)scaleFactor setScale:(float)scale;

@end

NS_ASSUME_NONNULL_END
