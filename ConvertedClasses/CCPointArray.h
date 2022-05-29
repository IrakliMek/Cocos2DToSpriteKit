//
//  CCPointArray.h
//  NSMatch3
//
//  Created by MacBook Pro on 12.04.2021.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CCPointArray : NSObject <NSCopying> {
    NSMutableArray    *_controlPoints;
}

/*+ Array that contains the control points. */
@property (nonatomic,readwrite,strong) NSMutableArray *controlPoints;

/// -----------------------------------------------------------------------
/// @name Creating a Point Array
/// -----------------------------------------------------------------------

/**
 *  Creates and initializes a Points array with capacity.
 *
 *  @param capacity Capacity of the array.
 *
 *  @return New point array.
 *  @see initWithCapacity:
 */
+ (id)arrayWithCapacity:(NSUInteger)capacity;

/**
 *  Initializes a Points array with capacity.
 *
 *  @param capacity Capacity of the array.
 *
 *  @return New point array.
 *  @see arrayWithCapacity:
 */
- (id)initWithCapacity:(NSUInteger)capacity;


/// -----------------------------------------------------------------------
/// @name Adding and Removing Points
/// -----------------------------------------------------------------------

/**
 *  Appends a control point.
 *
 *  @param controlPoint Control point to append.
 */
- (void)addControlPoint:(CGPoint)controlPoint;

/**
 *  Inserts a controlPoint.
 *
 *  @param controlPoint Control point to insert.
 *  @param index        Index of point.
 */
- (void)insertControlPoint:(CGPoint)controlPoint atIndex:(NSUInteger)index;

/**
 *  Replaces an existing control point.
 *
 *  @param controlPoint New control point.
 *  @param index        Index of point to replace.
 */
- (void)replaceControlPoint:(CGPoint)controlPoint atIndex:(NSUInteger)index;

/**
 *  Deletes a control point.
 *
 *  @param index Index of control point to delete.
 */
- (void)removeControlPointAtIndex:(NSUInteger)index;

/// -----------------------------------------------------------------------
/// @name Accessing Points
/// -----------------------------------------------------------------------

/**
 *  Retrieves a control point.
 *
 *  @param index Index of control point to retrieve.
 *
 *  @return A control point.
 */
- (CGPoint)getControlPointAtIndex:(NSInteger)index;

/**
 *  Returns the number of control points in the array.
 *
 *  @return Number of control points.
 */
- (NSUInteger)count;

/// -----------------------------------------------------------------------
/// @name Reversing the Order of Points
/// -----------------------------------------------------------------------

/**
 *  Creates a new copy of the array, in reversed order.
 *  User is responsible for releasing this array.
 *
 *  @return New point array.
 */
- (CCPointArray*)reverse;

/** Reverses the current control point array. */
- (void)reverseInline;

@end

NS_ASSUME_NONNULL_END
