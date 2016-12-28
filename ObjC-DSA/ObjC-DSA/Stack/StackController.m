//
//  StackController.m
//  ObjC-DSA
//
//  Created by Mansi Barodia on 12/28/16.
//  Copyright © 2016 Mansi Barodia. All rights reserved.
//

#import "StackController.h"

@implementation StackController

+ (void)controllerForStack {

    // Initialize the stack and see if it is empty
    Stack *stackObject = [[Stack alloc] initStack];
    NSLog(@"Checking if stack is empty %hhd", [stackObject isStackEmpty]);
    
    // Add items to the stack
    [stackObject push:@"First Object"];
    [stackObject push:@2];
    [stackObject push:@3.0];
    [stackObject push:@{@"key4": @"value4"}];
    [stackObject push:@"Last Object"];
    
    // Print stack
    [stackObject printStack];
    
    // Count of number of items in the stack.
    NSLog(@"Number of items in stack is %d", [stackObject stackCount]);
    
    // Take a peek into the stack.
    NSLog(@"Object on top of stack is %@", [stackObject peek]);
    
    // Removing the last item from the stack.
    [stackObject pop];
    
    // Printing the stack.
    [stackObject printStack];
    
    // Last item of the stack
    NSLog(@"Object on top of stack is %@", [stackObject peek]);
    
    // Removing items from the stack.
    [stackObject pop];
    [stackObject pop];
    [stackObject pop];
    [stackObject pop];
    
    // Check if stack is empty
    NSLog(@"Checking if stack is empty %hhd", [stackObject isStackEmpty]);
}
@end
