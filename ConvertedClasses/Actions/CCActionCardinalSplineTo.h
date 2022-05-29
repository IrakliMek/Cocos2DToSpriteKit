//
//  CCActionCardinalSplineTo.h
//  NSMatch3
//
//  Created by MacBook Pro on 19.04.2021.
//

#import <Foundation/Foundation.h>
#import <SpriteKit/SpriteKit.h>
#import "CCPointArray.h"

NS_ASSUME_NONNULL_BEGIN

@interface CCActionCardinalSplineTo : NSObject

+ (SKAction *)actionWithDuration:(float)duration points:(CCPointArray *)points tension:(float)tension;

@end

NS_ASSUME_NONNULL_END
