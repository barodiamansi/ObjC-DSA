//
//  DoublyLinkedList.m
//  ObjC-DSA
//
//  Created by Mansi Barodia on 11/3/15.
//  Copyright (c) 2015 Mansi Barodia. All rights reserved.
//

#import "DoublyLinkedList.h"

@interface DoublyLinkedList()
@property (nonatomic, strong) DoubleLLNode *tail;
@end

@implementation DoublyLinkedList
- (void)deleteNodeFromLinkedListWithHead:(DoubleLLNode *)head inPosition:(NSUInteger)position
{
    if (!head)
    {
        NSLog(@"%@", @"Head cannot be empty");
        return;
    }
    
    NSUInteger counter = 1;
    DoubleLLNode *currentNode = head;
    
    if (position == 1)
    {
        self.head = head.next;
        self.head.previous = NULL;
        currentNode = NULL;
    }
    else
    {
        DoubleLLNode *tempNode = [[DoubleLLNode alloc] init];
        while (currentNode && (counter < position))
        {
            counter++;
            tempNode = currentNode;
            currentNode = currentNode.next;
            currentNode.previous = tempNode;
        }
        
        // currentNode is not the last node, so point previous node's next pointer to currentNode's next node.
        if (currentNode.next)
        {
            tempNode.next = currentNode.next;
            currentNode.next.previous = tempNode;
        }
        // currentNode is the last node, make tempNode as the tail node.
        else
        {
            self.tail = tempNode;
            tempNode.next = NULL;
        }
        
        currentNode = NULL;
    }
}

- (void)insertInLinkedListWithHead:(DoubleLLNode *)head andData:(NSString *)data atPosition:(NSInteger)position
{
    DoubleLLNode *newNode = [[DoubleLLNode alloc] initWithData:data];
    DoubleLLNode *currentNode = head;
    
    NSInteger counter = 1;
    
    if (!head && position == 1)
    {
        self.head = newNode;
        self.tail = newNode;
    }
    // Insert at head.
    else if (position == 1)
    {
        newNode.next = currentNode;
        newNode.previous = NULL;
        currentNode.previous = newNode;
        self.head = newNode;
    }
    else
    {
        DoubleLLNode *tempNode = [[DoubleLLNode alloc] init];
        while (currentNode && (counter < position))
        {
            counter++;
            tempNode = currentNode;
            currentNode = currentNode.next;
            currentNode.previous = tempNode;
        }
        
        tempNode.next = newNode;
        newNode.previous = tempNode;
        newNode.next = currentNode;
        currentNode.previous = newNode;
    }
}

- (void)traverseLinkedListWithHead:(DoubleLLNode *)head
{
    if (!head)
    {
        NSLog(@"%@", @"Head node is required for traversing through the list");
        return;
    }
    
    DoubleLLNode *currentNode = head;
    while (currentNode)
    {
        NSLog(@"%@", [currentNode description]);
        currentNode = currentNode.next;
    }
}

- (NSUInteger)countLinkedListWithHead:(DoubleLLNode *)head
{
    if (!head)
    {
        NSLog(@"%@", @"Head node is required to count number of nodes in the list.");
        return 0;
    }
    
    NSUInteger count = 0;
    
    DoubleLLNode *currentNode = head;
    while (currentNode != NULL)
    {
        count++;
        currentNode = currentNode.next;
    }
    
    return count;
}

@end
