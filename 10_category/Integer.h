//
//  Integer.h
//  studyObjc
//
//  Created by Yoka_build on 2022/7/30.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Integer : NSObject {
@private
    NSInteger integer;
}

@property(assign, nonatomic) NSInteger integer;

@end

NS_ASSUME_NONNULL_END
