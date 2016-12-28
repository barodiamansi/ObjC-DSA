//
//  Stack.m
//  ObjC-DSA
//
//  Created by Mansi Barodia on 12/28/16.
//  Copyright © 2016 Mansi Barodia. All rights reserved.
//

#import "Stack.h"

@interface Stack()
@property (nonatomic, strong) NSMutableArray *stack;
@end

@implementation Stack

- (id)initStack {
    self = [super init];
    
    if (self) {
        self.stack = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (id)peek {
    return [self.stack lastObject];
}

- (void)push:(id)item {
    if (item) {
        [self.stack addObject:item];
    }
}

- (void)pop {
    if (![self isStackEmpty]) {
        [self.stack removeLastObject];
    }
}

- (BOOL)isStackEmpty {
    if ([self.stack count] > 0) {
        return NO;
    }
    
    return YES;
}

- (void)printStack {
    if (![self isStackEmpty]) {
        for (id item in self.stack) {
            NSLog(@"%@", item);
        }
    }
    else {
        NSLog(@"Stack is empty");
    }
}

- (int)stackCount {
    return [self.stack count];
}

@end
