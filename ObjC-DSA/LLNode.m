//
//  Node.m
//  ObjC-DSA
//
//  Created by Mansi Barodia on 10/18/15.
//  Copyright (c) 2015 Mansi Barodia. All rights reserved.
//

#import "LLNode.h"

@implementation LLNode

- (instancetype)initWithData:(NSString *)data
{
    self = [super init];
    
    if (self)
    {
        _data = data;
        _next = nil;
        
        return self;
    }
    
    return nil;
}

- (NSString *)description
{
    return [self.data description];
}

@end
