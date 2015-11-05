//
//  CircularLinkedList.h
//  ObjC-DSA
//
//  Created by Mansi Barodia on 10/18/15.
//  Copyright (c) 2015 Mansi Barodia. All rights reserved.
//

#import "LLNode.h"

/**
 Provides methods to perform functions on a single linked list.
 */
@interface CircularLinkedList : NSObject

// Head node of the linked list.
@property (nonatomic, strong) LLNode *head;

/**
 Inserts a node in front of linked list with the data provided and reaaranges the pointers.
 @param head first node of the linked list. If null, the new node would be created with the provided data as a head node.
 @param data of type string for node.
*/
- (void)insertInFrontLinkedListWithHead:(LLNode *)head andData:(NSString *)data

/**
 Inserts a node in the end of the linked list with the data provided and reaaranges the pointers.
 @param head first node of the linked list. Should not be null 
 @param data of type string for node.
 */
- (void)insertInEndLinkedListWithHead:(LLNode *)head andData:(NSString *)data

/**
 Deletes the node from the front of the linked list and rearranges the pointers.
 @param head first node of the linked list. Should not be null.
 */
- (void)deleteFromFrontLinkedListWithHead:(LLNode *)head;

/**
 Deletes the node from the end of the linked list and rearranges the pointers.
 @param head first node of the linked list. Should not be null.
 */
- (void)deleteFromEndLinkedListWithHead:(LLNode *)head;

/**
 Iterate over the linked list starting from head till the last node.
 @param head first node of the linked list. Should not be null.
 **/
- (void)traverseLinkedListWithHead:(LLNode *)head;

/**
 Iterate over the linked list starting from the last node to the head node.
 @param head first node of the linked list. Should not be null.
 **/
- (void)reverseTraverseLinkedListWithHead:(LLNode *)head;

/**
 Returns the count of nodes in the linked list
 @param head first node of the linked list. Should not be null.
 @return number of nodes as NSUInteger.
 **/
- (NSUInteger)countLinkedListWithHead:(LLNode *)head;

@end
