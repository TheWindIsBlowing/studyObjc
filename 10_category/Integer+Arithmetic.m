//
//  Integer+Arithmetic.m
//  studyObjc
//
//  Created by Yoka_build on 2022/7/30.
//

#import "Integer+Arithmetic.h"

@implementation Integer (Arithmetic)

- (id)add:(Integer*)addend {
    self.integer += addend.integer;
    return self;
}
- (id)sub:(Integer*)subtrahend {
    self.integer -= subtrahend.integer;
    return self;
}

@end
