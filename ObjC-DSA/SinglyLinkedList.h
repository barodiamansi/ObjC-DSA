//
//  SinglyLinkedList.h
//  ObjC-DSA
//
//  Created by Mansi Barodia on 10/18/15.
//  Copyright (c) 2015 Mansi Barodia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LLNode.h"

/**
 Provides methods to perform functions on a single linked list.
 */
@interface SinglyLinkedList : NSObject

// Head node of the linked list.
@property (nonatomic, strong) LLNode *head;

/**
 Inserts a node with the provided data in linked list and reaaranges the pointers.
 @param head first node of the linked list. If null, the new node would be created with the provided data as a head node.
 @param data of type string for node.
 @param position integer spot at which the node should be inserted.
 */
- (void)insertInLinkedListWithHead:(LLNode *)head andData:(NSString *)data atPosition:(NSInteger)position;

/**
 Deleted the node from the linked list at the given position and rearranges the pointers.
 @param head first node of the linked list. Should not be null.
 @param position integer spot of the node which needs to be deleted.
 */
- (void)deleteNodeFromLinkedListWithHead:(LLNode *)head inPosition:(NSUInteger)position;

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

/**
 Iterate over the linked list to search for a node containing the given data. Returns the first found node with the provided data.
 @param head first node of the linked list. Should not be null.
 @param data of type string required to search a node.
 @return Yes if the node is found, else false.
 **/
- (BOOL)searchInLinkedListWithHead:(LLNode *)head forData:(NSString *)data;

@end
