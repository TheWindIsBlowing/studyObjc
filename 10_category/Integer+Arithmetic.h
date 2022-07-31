//
//  Integer+Arithmetic.h
//  studyObjc
//
//  Created by Yoka_build on 2022/7/30.
//

#import "Integer.h"

NS_ASSUME_NONNULL_BEGIN

@interface Integer (Arithmetic)

- (id)add:(Integer*)addend;
- (id)sub:(Integer*)subtrahend;

@end

NS_ASSUME_NONNULL_END
