//
//  CCAnimation.h
//  NSMatch3
//
//  Created by MacBook Pro on 15.04.2021.
//

#import <Foundation/Foundation.h>
#import <SpriteKit/SpriteKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CCAnimation : SKAction

+ (SKAction *)animationWithSpriteFrames:(NSArray *)animationArrray delay:(float)delay;

@end

NS_ASSUME_NONNULL_END
