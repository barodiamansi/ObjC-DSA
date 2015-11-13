//
//  DoublyLinkedListController.m
//  ObjC-DSA
//
//  Created by Mansi Barodia on 11/3/15.
//  Copyright (c) 2015 Mansi Barodia. All rights reserved.
//

#import "DoublyLinkedListController.h"
#import "DoublyLinkedList.h"

@implementation DoublyLinkedListController

+ (void)controllerForDoublyLinkedList
{
    DoublyLinkedList *linkedList = [[DoublyLinkedList alloc] init];
    NSUInteger count = 0;
    
    [linkedList insertInLinkedListWithHead:NULL andData:@"Mansi" atPosition:1];
    [linkedList traverseLinkedListWithHead:linkedList.head];
    
    [linkedList insertInLinkedListWithHead:linkedList.head andData:@"Hello World" atPosition:2];
    count = [linkedList countLinkedListWithHead:linkedList.head];
    
    NSLog(@"%lu", (unsigned long)count);
    
    [linkedList insertInLinkedListWithHead:linkedList.head andData:@"Mario" atPosition:3];
    [linkedList insertInLinkedListWithHead:linkedList.head andData:@"Greetings" atPosition:1];
    
    count = [linkedList countLinkedListWithHead:linkedList.head];
    NSLog(@"%lu", (unsigned long)count);
    
    [linkedList traverseLinkedListWithHead:linkedList.head];
    
    [linkedList insertInLinkedListWithHead:linkedList.head andData:@"2015" atPosition:2];
    [linkedList traverseLinkedListWithHead:linkedList.head];
    
    count = [linkedList countLinkedListWithHead:linkedList.head];
    NSLog(@"%lu", (unsigned long)count);
    
    [linkedList deleteNodeFromLinkedListWithHead:linkedList.head inPosition:1];
    [linkedList traverseLinkedListWithHead:linkedList.head];
    
    [linkedList deleteNodeFromLinkedListWithHead:linkedList.head inPosition:[linkedList countLinkedListWithHead:linkedList.head]];
    [linkedList traverseLinkedListWithHead:linkedList.head];
    
    [linkedList deleteNodeFromLinkedListWithHead:linkedList.head inPosition:2];
    [linkedList traverseLinkedListWithHead:linkedList.head];
}

@end
