//
//  CCActionSequence.h
//  NSMatch3
//
//  Created by MacBook Pro on 09.04.2021.
//

#import <Foundation/Foundation.h>
#import <SpriteKit/SpriteKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CCActionSequence : NSObject

+ (SKAction *)actions:(SKAction *)action1, ...;

+ (SKAction *)actionOne:(id)actioon1 two:(id)action2;

+ (SKAction *)actionWithArray:(NSArray *)actions;

@end

NS_ASSUME_NONNULL_END
