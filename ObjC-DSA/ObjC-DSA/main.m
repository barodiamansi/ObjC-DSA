//
//  main.m
//  ObjC-DSA
//
//  Created by Mansi Barodia on 11/3/15.
//  Copyright (c) 2015 Mansi Barodia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SinglyLinkedListController.h"
#import "DoublyLinkedListController.h"
#import "CircularLinkedListController.h"
#import "StackController.h"
#import "QueueController.h"
#import "LinearSearch.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"%@", @"### Executing singly linked list operations ###");
        [SinglyLinkedListController controllerForSinglyLinkedList];
        
        NSLog(@"%@", @"### Executing doubly linked list operations ###");
        [DoublyLinkedListController controllerForDoublyLinkedList];
        
        NSLog(@"%@", @"### Executing circular linked list operations ###");
        [CircularLinkedListController controllerForCircularLinkedList];

        NSLog(@"%@", @"### Executing stack operations ###");
        [StackController controllerForStack];
        
        NSLog(@"%@", @"### Executing queue operations ###");
        [QueueController controllerForQueue];
        
        // Search in an array of numbers
        NSArray *searchArray = @[@1, @6, @2, @9, @4, @10];
        [LinearSearch searchWithinArray:searchArray forObject:@4];
        [LinearSearch searchWithinArray:searchArray forObject:@12];
        
        // Search in an array of strings
        NSArray *searchStringArray = @[@"d", @"a", @"r", @"s", @"c"];
        [LinearSearch searchWithinArray:searchStringArray forObject:@"s"];
        [LinearSearch searchWithinArray:searchStringArray forObject:@"v"];
        
        // Search in an sorted array of numbers
        NSArray *sortedSearchArray = @[@1, @2, @3, @4, @5, @6];
        [LinearSearch searchWithinOrderedArray:sortedSearchArray forObject:@3];
        [LinearSearch searchWithinOrderedArray:sortedSearchArray forObject:@0];
    }
    
    return 0;
}
