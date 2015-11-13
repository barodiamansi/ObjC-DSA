//
//  SinglyLinkedList.m
//  ObjC-DSA
//
//  Created by Mansi Barodia on 10/18/15.
//  Copyright (c) 2015 Mansi Barodia. All rights reserved.
//

#import "SinglyLinkedList.h"

@interface SinglyLinkedList()
@property (nonatomic, strong) LLNode *tail;
@end

@implementation SinglyLinkedList

- (void)deleteNodeFromLinkedListWithHead:(LLNode *)head inPosition:(NSUInteger)position
{
    if (!head)
    {
        NSLog(@"%@", @"Head cannot be empty");
        return;
    }
    
    NSUInteger counter = 1;
    LLNode *currentNode = head;
    
    if (position == 1)
    {
        self.head = head.next;
        currentNode = NULL;
    }
    else
    {
        LLNode *tempNode = [[LLNode alloc] init];
        while (currentNode && (counter < position))
        {
            counter++;
            tempNode = currentNode;
            currentNode = currentNode.next;
        }
        
        // currentNode is not the last node, so point previous node's next pointer to currentNode's next node.
        if (currentNode.next)
        {
            tempNode.next = currentNode.next;
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

- (void)insertInLinkedListWithHead:(LLNode *)head andData:(NSString *)data atPosition:(NSInteger)position
{
    LLNode *newNode = [[LLNode alloc] initWithData:data];
    LLNode *currentNode = head;
    
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
        self.head = newNode;
    }
    else
    {
        LLNode *tempNode = [[LLNode alloc] init];
        while (currentNode && (counter < position))
        {
            counter++;
            tempNode = currentNode;
            currentNode = currentNode.next;
        }
        
        tempNode.next = newNode;
        newNode.next = currentNode;
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
    while (currentNode)
    {
        NSLog(@"%@", [currentNode description]);
        currentNode = currentNode.next;
    }
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
    while (currentNode != NULL)
    {
        count++;
        currentNode = currentNode.next;
    }
    
    return count;
}

- (BOOL)searchInLinkedListWithHead:(LLNode *)head forData:(NSString *)data
{
    if (!head)
    {
        NSLog(@"%@", @"Head node is required to iterate over the list for search");
        return false;
    }
    
    LLNode *node = head;
    while (node && ![node.data isEqualToString:data])
    {
        node = node.next;
    }
    
    // If node is null or it would be null if the data wasn't found in the linked list, return false.
    if (!node)
    {
        return false;
    }
    
    return true;
}

@end
