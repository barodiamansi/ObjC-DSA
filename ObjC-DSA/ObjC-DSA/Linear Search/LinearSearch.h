//
//  LinearSearch.h
//  ObjC-DSA
//
//  Created by Mansi Barodia on 12/28/16.
//  Copyright © 2016 Mansi Barodia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LinearSearch : NSObject

// Searches for the given object within an array.
// @param searchArray - Unordered array in which the object should be searched. Should not be nil.
// @param object - Object to be searched within an array.
+ (void)searchWithinArray:(NSArray *)searchArray forObject:(id)object;

// Searches for the given object within an ordered/sorted array.
// @param searchArray - Ordered array in which the object should be searched. Should not be nil.
// @param object - Object to be searched within an array.
+ (void)searchWithinOrderedArray:(NSArray *)searchArray forObject:(id)object;
@end
