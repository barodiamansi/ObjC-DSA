//
//  Queue.h
//  ObjC-DSA
//
//  Created by Mansi Barodia on 12/28/16.
//  Copyright © 2016 Mansi Barodia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Queue : NSObject

// Adds item to the queue
- (void)enqueue:(id)item;

// Removes item from the front of the queue
- (void)dequeue;

// Prints the contents of the queue
- (void)printQueue;

// Returns the count of the queue
- (NSUInteger)queueCount;

// Returns the item in the front of the queue.
- (id)queueFront;

@end
