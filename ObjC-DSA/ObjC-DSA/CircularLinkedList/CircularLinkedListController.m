//
//  CircularLinkedListController.m
//  ObjC-DSA
//
//  Created by Mansi Barodia on 11/3/15.
//  Copyright (c) 2015 Mansi Barodia. All rights reserved.
//

#import "CircularLinkedListController.h"
#import "CircularLinkedList.h"

@implementation CircularLinkedListController

+ (void)controllerForCircularLinkedList
{
    CircularLinkedList *linkedList = [[CircularLinkedList alloc] init];
    NSUInteger count = 0;

    [linkedList insertInFrontLinkedListWithHead:NULL andData:@"Mansi"];
    count = [linkedList countLinkedListWithHead:linkedList.head];
    
    NSLog(@"%lu", (unsigned long)count);
    
    [linkedList insertInFrontLinkedListWithHead:linkedList.head andData:@"Mario"];
    [linkedList traverseLinkedListWithHead:linkedList.head];
    
    [linkedList insertInEndLinkedListWithHead:linkedList.head andData:@"Hello World"];
    [linkedList traverseLinkedListWithHead:linkedList.head];
    
    count = [linkedList countLinkedListWithHead:linkedList.head];
    NSLog(@"%lu", (unsigned long)count);
    
    [linkedList deleteFromFrontLinkedListWithHead:linkedList.head];
    [linkedList traverseLinkedListWithHead:linkedList.head];
    
    count = [linkedList countLinkedListWithHead:linkedList.head];
    NSLog(@"%lu", (unsigned long)count);
    
    [linkedList deleteFromEndLinkedListWithHead:linkedList.head];
    [linkedList traverseLinkedListWithHead:linkedList.head];
    
    count = [linkedList countLinkedListWithHead:linkedList.head];
    NSLog(@"%lu", (unsigned long)count);
}

@end
