//
//  CCActionScaleTo.h
//  NSMatch3
//
//  Created by MacBook Pro on 03.04.2021.
//

#import <Foundation/Foundation.h>
#import <SpriteKit/SpriteKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CCActionScaleTo : NSObject

+ (SKAction *)actionWithDuration:(float)duration scale:(float)scale;

+ (SKAction *)actionWithDuration:(float)duration scaleX:(float)scaleX scaleY:(float)scaleY;

@end

NS_ASSUME_NONNULL_END
