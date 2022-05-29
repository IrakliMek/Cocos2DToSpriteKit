//
//  CCActionSpawn.h
//  NSMatch3
//
//  Created by MacBook Pro on 12.04.2021.
//

#import <Foundation/Foundation.h>
#import <SpriteKit/SpriteKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CCActionSpawn : NSObject

+ (SKAction *)actions:(SKAction *)action1, ...;

+ (SKAction *)actionOne:(SKAction *)action1 two:(SKAction *)action2;

+ (SKAction *)actionWithArray:(NSArray *)actions;

@end

NS_ASSUME_NONNULL_END
