//
//  Stack.h
//  ObjC-DSA
//
//  Created by Mansi Barodia on 12/28/16.
//  Copyright © 2016 Mansi Barodia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Stack : NSObject

// Initializes stack object
- (id)initStack;

// Returns the last object on the stack
- (id)peek;

// Returns YES if stack is empty, else NO
- (BOOL)isStackEmpty;

// Adds and item to the stack
- (void)push:(id)item;

// Removes an item from the stack
- (void)pop;

// Prints the contents of the stack
- (void)printStack;

// Returns the count of number of items in the stack.
- (int)stackCount;
@end
