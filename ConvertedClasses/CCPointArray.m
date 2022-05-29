//
//  CCPointArray.m
//  NSMatch3
//
//  Created by MacBook Pro on 12.04.2021.
//

#import "CCPointArray.h"

@implementation CCPointArray

@synthesize controlPoints = _controlPoints;

+(instancetype) arrayWithCapacity:(NSUInteger)capacity
{
    return [[self alloc] initWithCapacity:capacity];
}

-(id) init
{
    return [self initWithCapacity:50];
}

// designated initializer
-(id) initWithCapacity:(NSUInteger)capacity
{
    if( (self=[super init])) {
        _controlPoints = [[NSMutableArray alloc] initWithCapacity:capacity];
    }

    return self;
}

-(id) copyWithZone:(NSZone *)zone
{
    NSMutableArray *newArray = [_controlPoints mutableCopy];
    CCPointArray *points = [[[self class] allocWithZone:zone] initWithCapacity:10];
    points.controlPoints = newArray;

    return points;
}

-(void) addControlPoint:(CGPoint)controlPoint
{

    NSValue *value = [NSValue valueWithCGPoint:controlPoint];

    [_controlPoints addObject:value];
}

-(void) insertControlPoint:(CGPoint)controlPoint atIndex:(NSUInteger)index
{

    NSValue *value = [NSValue valueWithCGPoint:controlPoint];

    [_controlPoints insertObject:value atIndex:index];

}

-(CGPoint) getControlPointAtIndex:(NSInteger)index
{
    index = MIN([_controlPoints count]-1, MAX(index, 0));

    NSValue *value = [_controlPoints objectAtIndex:index];
    CGPoint point = [value CGPointValue];

    return point;
}

-(void) replaceControlPoint:(CGPoint)controlPoint atIndex:(NSUInteger)index
{
    NSValue *value = [NSValue valueWithCGPoint:controlPoint];

    [_controlPoints replaceObjectAtIndex:index withObject:value];
}

-(void) removeControlPointAtIndex:(NSUInteger)index
{
    [_controlPoints removeObjectAtIndex:index];
}

-(NSUInteger) count
{
    return [_controlPoints count];
}

-(CCPointArray*) reverse
{
    NSMutableArray *newArray = [[NSMutableArray alloc] initWithCapacity:[_controlPoints count]];
    NSEnumerator *enumerator = [_controlPoints reverseObjectEnumerator];
    for (id element in enumerator)
        [newArray addObject:element];

    CCPointArray *config = [[[self class] alloc] initWithCapacity:0];
    config.controlPoints = newArray;


    return config;
}

-(void) reverseInline
{
    NSUInteger l = [_controlPoints count];
    for( NSUInteger i=0; i<l/2;i++)
    [_controlPoints exchangeObjectAtIndex:i withObjectAtIndex:l-i-1];
}

@end
