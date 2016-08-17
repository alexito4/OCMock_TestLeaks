//
//  A.m
//  TestLeaks
//
//  Created by Alejandro Martinez on 17/08/2016.
//  Copyright © 2016 Alejandro Martinez. All rights reserved.
//

#import "A.h"

@interface A ()

@property (nonatomic) B *b;

@end

@implementation A

- (instancetype)initWithB:(B *)b
{
    self = [self init];
    if (self) {
        NSLog(@">>>> A init %@", self);
        _b = b;
        _b.delegate = self;
    }
    return self;
}

- (void)dealloc
{
    NSLog(@">>>> A dealloc %@", self);
}

@end
