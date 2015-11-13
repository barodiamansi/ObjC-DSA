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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"%@", @"### Executing singly linked list operations ###");
        [SinglyLinkedListController controllerForSinglyLinkedList];
        
        NSLog(@"%@", @"### Executing doubly linked list operations ###");
        [DoublyLinkedListController controllerForDoublyLinkedList];
        
        NSLog(@"%@", @"### Executing circular linked list operations ###");
        [CircularLinkedListController controllerForCircularLinkedList];
    }
    
    return 0;
}
