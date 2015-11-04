//
//  Node.h
//  ObjC-DSA
//
//  Created by Mansi Barodia on 10/18/15.
//  Copyright (c) 2015 Mansi Barodia. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 Creates a node for single linked list.
 */
@interface LLNode : NSObject

// Data of type string to be stored in linked list node.
@property (nonatomic, strong) NSString *data;

// Pointer to the next node.
@property (nonatomic, strong) LLNode *next;

/**
 Initializes a node with provided data. 
 @param data of type NSString.
 @return Linked list node.
 */
- (instancetype)initWithData:(NSString *)data;

/**
 @return Data in the node in string format. 
 */
- (NSString *)description;

@end
