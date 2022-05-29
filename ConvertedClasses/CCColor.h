//
//  CCColor.h
//  NSMatch3
//
//  Created by MacBook Pro on 10.04.2021.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CCColor : NSObject

+ (UIColor *)colorWithRed:(float)r green:(float)g blue:(float)b alpha:(float)a;

+ (UIColor *)colorWithWhite:(float)w alpha:(float)a;

@end

NS_ASSUME_NONNULL_END
