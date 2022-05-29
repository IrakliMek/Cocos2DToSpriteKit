//
//  CCActionRepeatForever.h
//  NSMatch3
//
//  Created by MacBook Pro on 06.04.2021.
//

#import <Foundation/Foundation.h>
#import <SpriteKit/SpriteKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CCActionRepeatForever : NSObject

+ (SKAction *)actionWithAction:(SKAction *)action;

@end

NS_ASSUME_NONNULL_END
