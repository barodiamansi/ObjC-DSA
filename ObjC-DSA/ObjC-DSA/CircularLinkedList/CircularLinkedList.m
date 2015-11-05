//
//  CircularLinkedList.m
//  ObjC-DSA
//
//  Created by Mansi Barodia on 10/18/15.
//  Copyright (c) 2015 Mansi Barodia. All rights reserved.
//

#import "CircularLinkedList.h"

@implementation CircularLinkedList

- (void)deleteFromFrontLinkedListWithHead:(LLNode *)head;
{
    if (!head)
    {
        NSLog(@"%@", @"Head node is required delete the front node");
    }
    else if (head.next == head)
    {
        self.head = NULL;
    }
    else
    {
        LLNode *currentNode = head;
        LLNode *frontNode = head;
        
        do
        {
            currentNode = currentNode.next;
        } while (currentNode.next != head);
        
        self.head = frontNode.next;
        currentNode.next = self.head;
        frontNode = NULL;
    }
}

- (void)deleteFromEndLinkedListWithHead:(LLNode *)head;
{
    if (!head)
    {
        NSLog(@"%@", @"Head node is required delete the end node");
    }
    else if (head.next == head)
    {
        self.head = NULL;
    }
    else
    {
        LLNode *currentNode = head;
        while (currentNode.next.next != head)
        {
            currentNode = currentNode.next;
        }
        
        LLNode *endNode = currentNode.next;
        currentNode.next = self.head;
        endNode = NULL;
    }
}

- (void)insertInFrontLinkedListWithHead:(LLNode *)head andData:(NSString *)data
{
    LLNode *newNode = [[LLNode alloc] initWithData:data];
    newNode.next = newNode;
    
    if (!head)
    {
        self.head = newNode;
        self.head.next = newNode;
    }
    else
    {
        LLNode *currentNode = head;
        while (currentNode.next != head)
        {
            currentNode = currentNode.next;
        }
        
        newNode.next = head;
        self.head = newNode;
        currentNode.next = self.head;
    }
}

- (void)insertInEndLinkedListWithHead:(LLNode *)head andData:(NSString *)data
{
    LLNode *newNode = [[LLNode alloc] initWithData:data];
    newNode.next = newNode;
    
    if (!head)
    {
        NSLog(@"%@", @"Head node is required to insert a new node at end of list.");
    }
    else
    {
        LLNode *currentNode = head;
        while (currentNode.next != head)
        {
            currentNode = currentNode.next;
        }
        
        currentNode.next = newNode;
        newNode.next = self.head;
    }
}

- (void)traverseLinkedListWithHead:(LLNode *)head
{
    if (!head)
    {
        NSLog(@"%@", @"Head node is required for traversing through the list");
        return;
    }
    
    LLNode *currentNode = head;
    do
    {
        NSLog(@"%@", [currentNode description]);
        currentNode = currentNode.next;
        
    } while (currentNode != self.head);
}

// TODO - Implement a better solution for reverse traverse. 
- (void)reverseTraverseLinkedListWithHead:(LLNode *)head
{
    if (!head)
    {
        NSLog(@"%@", @"Head cannot be empty");
        return;
    }
}

- (NSUInteger)countLinkedListWithHead:(LLNode *)head
{
    if (!head)
    {
        NSLog(@"%@", @"Head node is required to count number of nodes in the list.");
        return 0;
    }
    
    NSUInteger count = 0;
    LLNode *currentNode = head;
    
    do
    {
        count++;
        currentNode = currentNode.next;
        
    } while (currentNode != self.head);
    
    return count;
}

@end
