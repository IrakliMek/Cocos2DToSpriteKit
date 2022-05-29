//
//  CCActionRotateTo.h
//  NSMatch3
//
//  Created by MacBook Pro on 08.04.2021.
//

#import <Foundation/Foundation.h>
#import <SpriteKit/SpriteKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CCActionRotateTo : NSObject

+ (SKAction *)actionWithDuration:(float)duration angle:(float)angle;

@end

NS_ASSUME_NONNULL_END
