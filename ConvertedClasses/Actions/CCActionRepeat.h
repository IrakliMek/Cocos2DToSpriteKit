//
//  CCActionRepeat.h
//  NSMatch3
//
//  Created by MacBook Pro on 09.04.2021.
//

#import <Foundation/Foundation.h>
#import <SpriteKit/SpriteKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CCActionRepeat : NSObject

+ (SKAction *)actionWithAction:(id)action times:(int)times;

@end

NS_ASSUME_NONNULL_END
