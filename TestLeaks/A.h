//
//  A.h
//  TestLeaks
//
//  Created by Alejandro Martinez on 17/08/2016.
//  Copyright © 2016 Alejandro Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "B.h"

@interface A : NSObject

- (instancetype)initWithB:(B *)b;

@end
