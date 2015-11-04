//
//  DoublyLinkedList.h
//  ObjC-DSA
//
//  Created by Mansi Barodia on 11/3/15.
//  Copyright (c) 2015 Mansi Barodia. All rights reserved.
//

#import "DoubleLLNode.h"

/**
 Provides methods to perform functions on a double linked list.
 */
@interface DoublyLinkedList : NSObject

// Head node of the linked list.
@property (nonatomic, strong) DoubleLLNode *head;

/**
 Inserts a node with the provided data in linked list and reaaranges the pointers.
 @param head first node of the linked list. If null, the new node would be created with the provided data as a head node.
 @param data of type string for node.
 @param position integer spot at which the node should be inserted.
 */
- (void)insertInLinkedListWithHead:(DoubleLLNode *)head andData:(NSString *)data atPosition:(NSInteger)position;

/**
 Deleted the node from the linked list at the given position and rearranges the pointers.
 @param head first node of the linked list. Should not be null.
 @param position integer spot of the node which needs to be deleted.
 */
- (void)deleteNodeFromLinkedListWithHead:(DoubleLLNode *)head inPosition:(NSUInteger)position;

/**
 Iterate over the linked list starting from head till the last node.
 @param head first node of the linked list. Should not be null.
 **/
- (void)traverseLinkedListWithHead:(DoubleLLNode *)head;

/**
 Returns the count of nodes in the linked list
 @param head first node of the linked list. Should not be null.
 @return number of nodes as NSUInteger.
 **/
- (NSUInteger)countLinkedListWithHead:(DoubleLLNode *)head;

@end
