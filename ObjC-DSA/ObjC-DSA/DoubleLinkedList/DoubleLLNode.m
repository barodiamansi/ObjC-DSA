//
//  DoubleLLNode.m
//  ObjC-DSA
//
//  Created by Mansi Barodia on 11/3/15.
//  Copyright (c) 2015 Mansi Barodia. All rights reserved.
//

#import "DoubleLLNode.h"

@implementation DoubleLLNode

- (instancetype)initWithData:(NSString *)data
{
    self = [super init];
    
    if (self)
    {
        _data = data;
        _next = nil;
        _previous = nil;
        
        return self;
    }
    
    return nil;
}

- (NSString *)description
{
    return [self.data description];
}

@end
