//
//  TestLeaksTests.m
//  TestLeaksTests
//
//  Created by Alejandro Martinez on 17/08/2016.
//  Copyright © 2016 Alejandro Martinez. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "A.h"

@interface TestLeaksTests : XCTestCase

@end

@implementation TestLeaksTests

- (void)testRealObjectNotLeaking
{
    B *b = [B new];
    A *a = [[A alloc] initWithB:b];
}

- (void)testMockLeaking
{
    B *b = OCMClassMock([B class]);
    A *a = [[A alloc] initWithB:b];
}

@end
