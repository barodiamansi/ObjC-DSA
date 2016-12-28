//
//  Queue.m
//  ObjC-DSA
//
//  Created by Mansi Barodia on 12/28/16.
//  Copyright © 2016 Mansi Barodia. All rights reserved.
//

#import "Queue.h"

@interface Queue()
@property (nonatomic, strong) NSMutableArray *queue;
@end

@implementation Queue

- (id)init {
    self = [super init];
    
    if (self) {
        self.queue = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (void)enqueue:(id)item {
    if (item) {
        [self.queue addObject:item];
    }
}

- (void)dequeue {
    if ([self.queue count] > 0) {
        [self.queue removeObjectAtIndex:0];
    }
}

- (void)printQueue {
    for (id item in self.queue) {
        NSLog(@"%@", item);
    }
}

- (id)queueFront {
    if ([self.queue count] > 0) {
        return [self.queue objectAtIndex:0];
    }
    
    return nil;
}

- (NSUInteger)queueCount {
    return [self.queue count];
}
@end
