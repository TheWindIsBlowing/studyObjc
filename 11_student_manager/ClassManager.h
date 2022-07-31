//
//  ClassManager.h
//  studyObjc
//
//  Created by Yoka_build on 2022/7/31.
//

#import <Foundation/Foundation.h>

@class Student;

NS_ASSUME_NONNULL_BEGIN

@interface ClassManager : NSObject

- (BOOL)addStudent:(Student *)student;
- (void)showClassMessage;

@end

NS_ASSUME_NONNULL_END
