//
//  CCActionDelay.h
//  NSMatch3
//
//  Created by MacBook Pro on 03.04.2021.
//

#import <Foundation/Foundation.h>
#import <SpriteKit/SpriteKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CCActionDelay : NSObject

+ (SKAction *)actionWithDuration:(float)duration;

@end

NS_ASSUME_NONNULL_END
