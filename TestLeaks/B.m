//
//  B.m
//  TestLeaks
//
//  Created by Alejandro Martinez on 17/08/2016.
//  Copyright © 2016 Alejandro Martinez. All rights reserved.
//

#import "B.h"

@implementation B

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@">>>> B init %@", self);
    }
    return self;
}

- (void)dealloc
{
    NSLog(@">>>> B dealloc %@", self);
}

@end
