//
//  QueueController.m
//  ObjC-DSA
//
//  Created by Mansi Barodia on 12/28/16.
//  Copyright © 2016 Mansi Barodia. All rights reserved.
//

#import "QueueController.h"

@implementation QueueController

+ (void)controllerForQueue {
    // Initializing the queue
    Queue *queueObject = [[Queue alloc] init];
    
    // Add items to the queue
    [queueObject enqueue:@"First Object"];
    [queueObject enqueue:@2];
    [queueObject enqueue:@3.0];
    [queueObject enqueue:@{@"key4": @"value4"}];
    [queueObject enqueue:@"Last Object"];
    
    // Print queue
    [queueObject printQueue];
    
    // Count of number of items in the queue.
    NSLog(@"Number of items in queue is %lu", (unsigned long)[queueObject queueCount]);
    
    // Object in front of the queue
    NSLog(@"Object in front of the queue %@", [queueObject queueFront]);
    
    // Removing the first item from the queue
    [queueObject dequeue];
    
    // Printing the queue.
    [queueObject printQueue];
    
    // First item in the queue
    NSLog(@"Object on top of stack is %@", [queueObject queueFront]);
    
    // Removing items from the queue.
    [queueObject dequeue];
    [queueObject dequeue];
    [queueObject dequeue];
    [queueObject dequeue];
    
    // Number of items in the queue
    NSLog(@"Number of items in queue is %lu", (unsigned long)[queueObject queueCount]);
}

@end
