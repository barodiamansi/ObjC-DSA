//
//  LinearSearch.m
//  ObjC-DSA
//
//  Created by Mansi Barodia on 12/28/16.
//  Copyright © 2016 Mansi Barodia. All rights reserved.
//

#import "LinearSearch.h"

@implementation LinearSearch

+ (void)searchWithinArray:(NSArray *)searchArray forObject:(id)object {
    for (int i=0; i < [searchArray count]; i++) {
        if (searchArray[i] == object) {
            NSLog(@"Object found at index %d", i);
            return;
        }
    }
    
    NSLog(@"Object not found");
}

+ (void)searchWithinOrderedArray:(NSArray *)searchArray forObject:(id)object {
    for (int i=0; i < [searchArray count]; i++) {
        if (searchArray[i] == object) {
            NSLog(@"Object found at index %d", i);
            return;
        }
        else if (searchArray[i] > object) {
            NSLog(@"Objects in the array at and after index %d are greater than the search object", i);
            return;
        }
    }
    
    NSLog(@"Object not found");
}

@end
