//
//  CCActionMoveTo.h
//  NSMatch3
//
//  Created by MacBook Pro on 03.04.2021.
//

#import <Foundation/Foundation.h>
#import <SpriteKit/SpriteKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CCActionMoveTo : NSObject

+ (SKAction *)actionWithDuration:(float)duration position:(CGPoint)ccp;

@end

NS_ASSUME_NONNULL_END
